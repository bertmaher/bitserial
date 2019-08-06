import logging
import numpy as np
import sys
import topi.nn
import tvm
from tvm import autotvm

def bitpack(Anp, dtype="uint32"):
    A = tvm.placeholder(Anp.shape, name="A", dtype=str(Anp.dtype))
    B = topi.nn.bitpack(A, 1, 1, 1, dtype)
    s = tvm.create_schedule(B.op)
    fn = tvm.build(s, [A, B], "llvm -mcpu=core-avx2")
    ctx = tvm.context("llvm -mcpu=core-avx2")
    Bshape = topi.util.get_const_tuple(B.shape)
    b = tvm.nd.array(np.zeros(Bshape, dtype=dtype), ctx)
    fn(tvm.nd.array(Anp, ctx), b)
    return b.asnumpy()  # .reshape(b.shape[0], b.shape[2])


@autotvm.template
def bgemm_topi(Y, X, K, dtype="uint64"):
    DB = 1
    WB = 1
    out_dtype = dtype
    data_packed = tvm.placeholder((Y, DB, K), dtype=dtype, name="A")
    weight_packed = tvm.placeholder((X, WB, K), dtype=dtype, name="B")

    oshape = (Y, X)
    k = tvm.reduce_axis((0, K), name='k')
    db = tvm.reduce_axis((0, DB), name='db')
    wb = tvm.reduce_axis((0, WB), name='wb')

    matmul = tvm.compute(oshape, lambda i, j: tvm.sum(
        tvm.popcount(weight_packed[j, wb, k] & data_packed[i, db, k]).astype(out_dtype)
        << (db+wb).astype(out_dtype), axis=[wb, db, k]), tag='bitserial_dense')

    s = tvm.create_schedule(matmul.op)
    cfg = autotvm.get_config()

    CC = s.cache_write(matmul, "global")

    y, x = s[matmul].op.axis

    yo, yi = cfg.define_split("tile_y", y, num_outputs=2, filter=lambda x: x.size[-1] <= 8)
    xo, xi = cfg.define_split("tile_x", x, num_outputs=2, filter=lambda x: x.size[-1] <= 8)
    
    yo, yi = cfg["tile_y"].apply(s, matmul, y)
    xo, xi = cfg["tile_x"].apply(s, matmul, x)

    s[matmul].reorder(yo, xo, yi, xi)
    cfg.define_knob("compute_at_axis", [0, 1, 2])
    if cfg["compute_at_axis"].val == 0:
        s[CC].compute_at(s[matmul], xo)
    elif cfg["compute_at_axis"].val == 1:
        s[CC].compute_at(s[matmul], yi)
    elif cfg["compute_at_axis"].val == 2:
        s[CC].compute_at(s[matmul], xi)

    yc, xc = s[CC].op.axis
    wb, db, k = s[CC].op.reduce_axis

    cfg.define_reorder("reorder_0", [k, yc, xc], policy="all")
    cfg["reorder_0"].apply(s, CC, [k, yc, xc])

    cfg.add_flop(2 * Y * X * K * int(dtype[4:]))

    return s, [data_packed, weight_packed, matmul]


def bgemm_topi_tuned(Y, X, K, dtype="uint64"):
    with autotvm.apply_history_best("matmul_wc.log"):
        with tvm.target.create("llvm -mcpu=core-avx2"):
            s, arg_bufs = bgemm_topi(Y, X, K, "uint64")
            return tvm.build(s, arg_bufs), s, arg_bufs


def test_bgemm(name, bgemm, dtype, M=2, N=2, K=8192, verbose=True):
    ctx = tvm.context("llvm -mcpu=core-avx2")

    a = np.random.randint(0, 2, (M, K))
    b = np.random.randint(0, 2, (N, K))

    pa = bitpack(a, dtype=dtype)
    pb = bitpack(b, dtype=dtype)

    fn, s, bufs = bgemm(pa.shape[0], pb.shape[0], pa.shape[2], dtype)
    print(tvm.lower(s, bufs, simple_mode=True))
    c = tvm.nd.array(np.zeros((pa.shape[0], pb.shape[0]), dtype=dtype), ctx)
    fn(tvm.nd.array(pa, ctx), tvm.nd.array(pb, ctx), c)

    tvm.testing.assert_allclose(c.asnumpy(), a.dot(b.T))
    evaluator = fn.time_evaluator(fn.entry_name, ctx, number=40)
    time = evaluator(tvm.nd.array(pa, ctx), tvm.nd.array(pb, ctx), c).mean
    print("{} {}/{}/{} GFLOPS: {}".format(
            name,
            M, N, K,
            2 * a.shape[0] * a.shape[1] * b.shape[0] / time / 1e9))



Y, X, K = 32, 32, 1024//64

if True:
    task = autotvm.task.create(bgemm_topi, args=(Y, X, K, "uint64"), target="llvm -mcpu=core-avx2")
    print(task.config_space)

    logging.getLogger('autotvm').setLevel(logging.DEBUG)
    logging.getLogger('autotvm').addHandler(logging.StreamHandler(sys.stdout))

    measure_option = autotvm.measure_option(
        builder='local',
        runner=autotvm.LocalRunner(number=40))

    tuner = autotvm.tuner.GridSearchTuner(task)
    tuner.tune(n_trial=288,
               measure_option=measure_option,
               callbacks=[autotvm.callback.log_to_file('matmul_wc.log')])

test_bgemm("bgemm_topi_tuned", bgemm_topi_tuned, "uint64", Y, X, K*64)

