; ModuleID = 'default_function'
source_filename = "default_function"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin18.5.0"

%0 = type { i8*, %1, i32, %2, i64*, i64*, i64 }
%1 = type { i32, i32 }
%2 = type { i8, i8, i16 }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global void (i8*)* null, align 8
@.str = private constant [69 x i8] c"Assert fail: (num_args == 3), default_function: num_args should be 3\00", align 1
@.str.1 = private constant [124 x i8] c"Assert fail: ((1 == int32(arg0.strides[1])) && (256 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.2 = private constant [124 x i8] c"Assert fail: ((1 == int32(arg1.strides[1])) && (256 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.3 = private constant [122 x i8] c"Assert fail: ((1 == int32(arg2.strides[1])) && (8 == int32(arg2.strides[0]))), arg2.strides: expected to be compact array\00", align 1
@.str.4 = private constant [144 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), default_function: Expect arg[0] to be pointer\00", align 1
@.str.5 = private constant [144 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), default_function: Expect arg[1] to be pointer\00", align 1
@.str.6 = private constant [144 x i8] c"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), default_function: Expect arg[2] to be pointer\00", align 1
@.str.7 = private constant [55 x i8] c"Assert fail: (dev_type == 1), device_type need to be 1\00", align 1
@.str.8 = private constant [81 x i8] c"Assert fail: (2 == tvm_struct_get(arg0, 0, 4)), arg0.ndim is expected to equal 2\00", align 1
@.str.9 = private constant [185 x i8] c"Assert fail: (((tvm_struct_get(arg0, 0, 5) == (uint8)1) && (tvm_struct_get(arg0, 0, 6) == (uint8)32)) && (tvm_struct_get(arg0, 0, 7) == (uint16)1)), arg0.dtype is expected to be uint32\00", align 1
@.str.10 = private constant [95 x i8] c"Assert fail: (int32(arg0.shape[0]) == 8), Argument arg0.shape[0] has an unsatisfied constraint\00", align 1
@.str.11 = private constant [97 x i8] c"Assert fail: (int32(arg0.shape[1]) == 256), Argument arg0.shape[1] has an unsatisfied constraint\00", align 1
@.str.12 = private constant [112 x i8] c"Assert fail: (tvm_struct_get(arg0, 0, 8) == (uint64)0), Argument arg0.byte_offset has an unsatisfied constraint\00", align 1
@.str.13 = private constant [81 x i8] c"Assert fail: (2 == tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 2\00", align 1
@.str.14 = private constant [185 x i8] c"Assert fail: (((tvm_struct_get(arg1, 0, 5) == (uint8)1) && (tvm_struct_get(arg1, 0, 6) == (uint8)32)) && (tvm_struct_get(arg1, 0, 7) == (uint16)1)), arg1.dtype is expected to be uint32\00", align 1
@.str.15 = private constant [95 x i8] c"Assert fail: (int32(arg1.shape[0]) == 8), Argument arg1.shape[0] has an unsatisfied constraint\00", align 1
@.str.16 = private constant [97 x i8] c"Assert fail: (int32(arg1.shape[1]) == 256), Argument arg1.shape[1] has an unsatisfied constraint\00", align 1
@.str.17 = private constant [112 x i8] c"Assert fail: (tvm_struct_get(arg1, 0, 8) == (uint64)0), Argument arg1.byte_offset has an unsatisfied constraint\00", align 1
@.str.18 = private constant [105 x i8] c"Assert fail: (1 == tvm_struct_get(arg1, 0, 10)), Argument arg1.device_type has an unsatisfied constraint\00", align 1
@.str.19 = private constant [107 x i8] c"Assert fail: (dev_id == tvm_struct_get(arg1, 0, 9)), Argument arg1.device_id has an unsatisfied constraint\00", align 1
@.str.20 = private constant [81 x i8] c"Assert fail: (2 == tvm_struct_get(arg2, 0, 4)), arg2.ndim is expected to equal 2\00", align 1
@.str.21 = private constant [185 x i8] c"Assert fail: (((tvm_struct_get(arg2, 0, 5) == (uint8)1) && (tvm_struct_get(arg2, 0, 6) == (uint8)32)) && (tvm_struct_get(arg2, 0, 7) == (uint16)1)), arg2.dtype is expected to be uint32\00", align 1
@.str.22 = private constant [95 x i8] c"Assert fail: (int32(arg2.shape[0]) == 8), Argument arg2.shape[0] has an unsatisfied constraint\00", align 1
@.str.23 = private constant [95 x i8] c"Assert fail: (int32(arg2.shape[1]) == 8), Argument arg2.shape[1] has an unsatisfied constraint\00", align 1
@.str.24 = private constant [112 x i8] c"Assert fail: (tvm_struct_get(arg2, 0, 8) == (uint64)0), Argument arg2.byte_offset has an unsatisfied constraint\00", align 1
@.str.25 = private constant [105 x i8] c"Assert fail: (1 == tvm_struct_get(arg2, 0, 10)), Argument arg2.device_type has an unsatisfied constraint\00", align 1
@.str.26 = private constant [107 x i8] c"Assert fail: (dev_id == tvm_struct_get(arg2, 0, 9)), Argument arg2.device_id has an unsatisfied constraint\00", align 1
@__tvm_main__ = weak local_unnamed_addr constant [17 x i8] c"default_function\00", align 1

define dllexport i32 @default_function(i8* noalias nocapture readonly, i8* noalias nocapture readonly, i32) local_unnamed_addr {
entry:
  %3 = icmp eq i32 %2, 3
  br i1 %3, label %assert_end, label %assert_fail, !prof !1

assert_fail:                                      ; preds = %entry
  %4 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %4(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  ret i32 -1

assert_end:                                       ; preds = %entry
  %5 = bitcast i8* %0 to %0**
  %6 = load %0*, %0** %5, align 8
  %7 = bitcast i8* %1 to i32*
  %8 = load i32, i32* %7, align 4, !tbaa !5
  %9 = getelementptr inbounds i8, i8* %0, i64 8
  %10 = bitcast i8* %9 to %0**
  %11 = load %0*, %0** %10, align 8
  %12 = getelementptr inbounds i8, i8* %1, i64 4
  %13 = bitcast i8* %12 to i32*
  %14 = load i32, i32* %13, align 4, !tbaa !19
  %15 = getelementptr inbounds i8, i8* %0, i64 16
  %16 = bitcast i8* %15 to %0**
  %17 = load %0*, %0** %16, align 8
  %18 = getelementptr inbounds i8, i8* %1, i64 8
  %19 = bitcast i8* %18 to i32*
  %20 = load i32, i32* %19, align 4, !tbaa !21
  %21 = getelementptr inbounds %0, %0* %6, i64 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds %0, %0* %6, i64 0, i32 4
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds %0, %0* %6, i64 0, i32 5
  %26 = load i64*, i64** %25, align 8
  %27 = icmp eq i64* %26, null
  br i1 %27, label %if_end, label %if_then, !prof !24

if_then:                                          ; preds = %assert_end
  %28 = getelementptr inbounds i64, i64* %26, i64 1
  %29 = load i64, i64* %28, align 8, !tbaa !25
  %30 = trunc i64 %29 to i32
  %31 = icmp eq i32 %30, 1
  %32 = load i64, i64* %26, align 8, !tbaa !39
  %33 = trunc i64 %32 to i32
  %34 = icmp eq i32 %33, 256
  %35 = and i1 %31, %34
  br i1 %35, label %if_end, label %assert_fail1, !prof !1

if_end:                                           ; preds = %assert_end, %if_then
  %36 = getelementptr inbounds %0, %0* %6, i64 0, i32 1, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %0, %0* %6, i64 0, i32 1, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %0, %0* %11, i64 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds %0, %0* %11, i64 0, i32 4
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds %0, %0* %11, i64 0, i32 5
  %45 = load i64*, i64** %44, align 8
  %46 = icmp eq i64* %45, null
  br i1 %46, label %if_end4, label %if_then3, !prof !24

assert_fail1:                                     ; preds = %if_then
  %47 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %47(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.1, i64 0, i64 0))
  ret i32 -1

if_then3:                                         ; preds = %if_end
  %48 = getelementptr inbounds i64, i64* %45, i64 1
  %49 = load i64, i64* %48, align 8, !tbaa !41
  %50 = trunc i64 %49 to i32
  %51 = icmp eq i32 %50, 1
  %52 = load i64, i64* %45, align 8, !tbaa !55
  %53 = trunc i64 %52 to i32
  %54 = icmp eq i32 %53, 256
  %55 = and i1 %51, %54
  br i1 %55, label %if_end4, label %assert_fail5, !prof !1

if_end4:                                          ; preds = %if_end, %if_then3
  %56 = getelementptr inbounds %0, %0* %17, i64 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds %0, %0* %17, i64 0, i32 4
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds %0, %0* %17, i64 0, i32 5
  %61 = load i64*, i64** %60, align 8
  %62 = icmp eq i64* %61, null
  br i1 %62, label %if_end8, label %if_then7, !prof !24

assert_fail5:                                     ; preds = %if_then3
  %63 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %63(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.2, i64 0, i64 0))
  ret i32 -1

if_then7:                                         ; preds = %if_end4
  %64 = getelementptr inbounds i64, i64* %61, i64 1
  %65 = load i64, i64* %64, align 8, !tbaa !57
  %66 = trunc i64 %65 to i32
  %67 = icmp eq i32 %66, 1
  %68 = load i64, i64* %61, align 8, !tbaa !71
  %69 = trunc i64 %68 to i32
  %70 = icmp eq i32 %69, 8
  %71 = and i1 %67, %70
  br i1 %71, label %if_end8, label %assert_fail9, !prof !1

if_end8:                                          ; preds = %if_end4, %if_then7
  switch i32 %8, label %assert_fail11 [
    i32 13, label %assert_end12
    i32 7, label %assert_end12
    i32 4, label %assert_end12
    i32 3, label %assert_end12
  ]

assert_fail9:                                     ; preds = %if_then7
  %72 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %72(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.3, i64 0, i64 0))
  ret i32 -1

assert_fail11:                                    ; preds = %if_end8
  %73 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %73(i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.4, i64 0, i64 0))
  ret i32 -1

assert_end12:                                     ; preds = %if_end8, %if_end8, %if_end8, %if_end8
  switch i32 %14, label %assert_fail13 [
    i32 13, label %assert_end14
    i32 7, label %assert_end14
    i32 4, label %assert_end14
    i32 3, label %assert_end14
  ]

assert_fail13:                                    ; preds = %assert_end12
  %74 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %74(i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.5, i64 0, i64 0))
  ret i32 -1

assert_end14:                                     ; preds = %assert_end12, %assert_end12, %assert_end12, %assert_end12
  switch i32 %20, label %assert_fail15 [
    i32 13, label %assert_end16
    i32 7, label %assert_end16
    i32 4, label %assert_end16
    i32 3, label %assert_end16
  ]

assert_fail15:                                    ; preds = %assert_end14
  %75 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %75(i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.6, i64 0, i64 0))
  ret i32 -1

assert_end16:                                     ; preds = %assert_end14, %assert_end14, %assert_end14, %assert_end14
  %76 = icmp eq i32 %37, 1
  br i1 %76, label %assert_end18, label %assert_fail17, !prof !1

assert_fail17:                                    ; preds = %assert_end16
  %77 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %77(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %78 = getelementptr inbounds %0, %0* %6, i64 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %assert_end20, label %assert_fail19, !prof !1

assert_fail19:                                    ; preds = %assert_end18
  %81 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %81(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.8, i64 0, i64 0))
  ret i32 -1

assert_end20:                                     ; preds = %assert_end18
  %82 = getelementptr inbounds %0, %0* %6, i64 0, i32 3, i32 0
  %83 = load i8, i8* %82, align 1
  %84 = icmp eq i8 %83, 1
  %85 = getelementptr inbounds %0, %0* %6, i64 0, i32 3, i32 1
  %86 = load i8, i8* %85, align 1
  %87 = icmp eq i8 %86, 32
  %88 = and i1 %84, %87
  %89 = getelementptr inbounds %0, %0* %6, i64 0, i32 3, i32 2
  %90 = load i16, i16* %89, align 2
  %91 = icmp eq i16 %90, 1
  %92 = and i1 %88, %91
  br i1 %92, label %assert_end22, label %assert_fail21, !prof !1

assert_fail21:                                    ; preds = %assert_end20
  %93 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %93(i8* getelementptr inbounds ([185 x i8], [185 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end22:                                     ; preds = %assert_end20
  %94 = load i64, i64* %24, align 8, !tbaa !73
  %95 = trunc i64 %94 to i32
  %96 = icmp eq i32 %95, 8
  br i1 %96, label %assert_end24, label %assert_fail23, !prof !1

assert_fail23:                                    ; preds = %assert_end22
  %97 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %97(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.10, i64 0, i64 0))
  ret i32 -1

assert_end24:                                     ; preds = %assert_end22
  %98 = getelementptr inbounds i64, i64* %24, i64 1
  %99 = load i64, i64* %98, align 8, !tbaa !87
  %100 = trunc i64 %99 to i32
  %101 = icmp eq i32 %100, 256
  br i1 %101, label %assert_end26, label %assert_fail25, !prof !1

assert_fail25:                                    ; preds = %assert_end24
  %102 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %102(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.11, i64 0, i64 0))
  ret i32 -1

assert_end26:                                     ; preds = %assert_end24
  %103 = getelementptr inbounds %0, %0* %6, i64 0, i32 6
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %assert_end28, label %assert_fail27, !prof !1

assert_fail27:                                    ; preds = %assert_end26
  %106 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %106(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.12, i64 0, i64 0))
  ret i32 -1

assert_end28:                                     ; preds = %assert_end26
  %107 = getelementptr inbounds %0, %0* %11, i64 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 2
  br i1 %109, label %assert_end30, label %assert_fail29, !prof !1

assert_fail29:                                    ; preds = %assert_end28
  %110 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %110(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.13, i64 0, i64 0))
  ret i32 -1

assert_end30:                                     ; preds = %assert_end28
  %111 = getelementptr inbounds %0, %0* %11, i64 0, i32 3, i32 0
  %112 = load i8, i8* %111, align 1
  %113 = icmp eq i8 %112, 1
  %114 = getelementptr inbounds %0, %0* %11, i64 0, i32 3, i32 1
  %115 = load i8, i8* %114, align 1
  %116 = icmp eq i8 %115, 32
  %117 = and i1 %113, %116
  %118 = getelementptr inbounds %0, %0* %11, i64 0, i32 3, i32 2
  %119 = load i16, i16* %118, align 2
  %120 = icmp eq i16 %119, 1
  %121 = and i1 %117, %120
  br i1 %121, label %assert_end32, label %assert_fail31, !prof !1

assert_fail31:                                    ; preds = %assert_end30
  %122 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %122(i8* getelementptr inbounds ([185 x i8], [185 x i8]* @.str.14, i64 0, i64 0))
  ret i32 -1

assert_end32:                                     ; preds = %assert_end30
  %123 = load i64, i64* %43, align 8, !tbaa !89
  %124 = trunc i64 %123 to i32
  %125 = icmp eq i32 %124, 8
  br i1 %125, label %assert_end34, label %assert_fail33, !prof !1

assert_fail33:                                    ; preds = %assert_end32
  %126 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %126(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.15, i64 0, i64 0))
  ret i32 -1

assert_end34:                                     ; preds = %assert_end32
  %127 = getelementptr inbounds i64, i64* %43, i64 1
  %128 = load i64, i64* %127, align 8, !tbaa !103
  %129 = trunc i64 %128 to i32
  %130 = icmp eq i32 %129, 256
  br i1 %130, label %assert_end36, label %assert_fail35, !prof !1

assert_fail35:                                    ; preds = %assert_end34
  %131 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %131(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.16, i64 0, i64 0))
  ret i32 -1

assert_end36:                                     ; preds = %assert_end34
  %132 = getelementptr inbounds %0, %0* %11, i64 0, i32 6
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %assert_end38, label %assert_fail37, !prof !1

assert_fail37:                                    ; preds = %assert_end36
  %135 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %135(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.17, i64 0, i64 0))
  ret i32 -1

assert_end38:                                     ; preds = %assert_end36
  %136 = getelementptr inbounds %0, %0* %11, i64 0, i32 1, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %assert_end40, label %assert_fail39, !prof !1

assert_fail39:                                    ; preds = %assert_end38
  %139 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %139(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.18, i64 0, i64 0))
  ret i32 -1

assert_end40:                                     ; preds = %assert_end38
  %140 = getelementptr inbounds %0, %0* %11, i64 0, i32 1, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %39, %141
  br i1 %142, label %assert_end42, label %assert_fail41, !prof !1

assert_fail41:                                    ; preds = %assert_end40
  %143 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %143(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.19, i64 0, i64 0))
  ret i32 -1

assert_end42:                                     ; preds = %assert_end40
  %144 = getelementptr inbounds %0, %0* %17, i64 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 2
  br i1 %146, label %assert_end44, label %assert_fail43, !prof !1

assert_fail43:                                    ; preds = %assert_end42
  %147 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %147(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.20, i64 0, i64 0))
  ret i32 -1

assert_end44:                                     ; preds = %assert_end42
  %148 = getelementptr inbounds %0, %0* %17, i64 0, i32 3, i32 0
  %149 = load i8, i8* %148, align 1
  %150 = icmp eq i8 %149, 1
  %151 = getelementptr inbounds %0, %0* %17, i64 0, i32 3, i32 1
  %152 = load i8, i8* %151, align 1
  %153 = icmp eq i8 %152, 32
  %154 = and i1 %150, %153
  %155 = getelementptr inbounds %0, %0* %17, i64 0, i32 3, i32 2
  %156 = load i16, i16* %155, align 2
  %157 = icmp eq i16 %156, 1
  %158 = and i1 %154, %157
  br i1 %158, label %assert_end46, label %assert_fail45, !prof !1

assert_fail45:                                    ; preds = %assert_end44
  %159 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %159(i8* getelementptr inbounds ([185 x i8], [185 x i8]* @.str.21, i64 0, i64 0))
  ret i32 -1

assert_end46:                                     ; preds = %assert_end44
  %160 = load i64, i64* %59, align 8, !tbaa !105
  %161 = trunc i64 %160 to i32
  %162 = icmp eq i32 %161, 8
  br i1 %162, label %assert_end48, label %assert_fail47, !prof !1

assert_fail47:                                    ; preds = %assert_end46
  %163 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %163(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.22, i64 0, i64 0))
  ret i32 -1

assert_end48:                                     ; preds = %assert_end46
  %164 = getelementptr inbounds i64, i64* %59, i64 1
  %165 = load i64, i64* %164, align 8, !tbaa !119
  %166 = trunc i64 %165 to i32
  %167 = icmp eq i32 %166, 8
  br i1 %167, label %assert_end50, label %assert_fail49, !prof !1

assert_fail49:                                    ; preds = %assert_end48
  %168 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %168(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.23, i64 0, i64 0))
  ret i32 -1

assert_end50:                                     ; preds = %assert_end48
  %169 = getelementptr inbounds %0, %0* %17, i64 0, i32 6
  %170 = load i64, i64* %169, align 8
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %assert_end52, label %assert_fail51, !prof !1

assert_fail51:                                    ; preds = %assert_end50
  %172 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %172(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.24, i64 0, i64 0))
  ret i32 -1

assert_end52:                                     ; preds = %assert_end50
  %173 = getelementptr inbounds %0, %0* %17, i64 0, i32 1, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %assert_end54, label %assert_fail53, !prof !1

assert_fail53:                                    ; preds = %assert_end52
  %176 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %176(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.25, i64 0, i64 0))
  ret i32 -1

assert_end54:                                     ; preds = %assert_end52
  %177 = getelementptr inbounds %0, %0* %17, i64 0, i32 1, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp eq i32 %39, %178
  br i1 %179, label %assert_end56, label %assert_fail55, !prof !1

assert_fail55:                                    ; preds = %assert_end54
  %180 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !2
  tail call void %180(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.26, i64 0, i64 0))
  ret i32 -1

assert_end56:                                     ; preds = %assert_end54
  tail call fastcc void @default_function_compute_(i8* %57, i8* %22, i8* %41)
  ret i32 0
}

; Function Attrs: noinline nounwind
define private fastcc void @default_function_compute_(i8* noalias nocapture, i8* noalias nocapture readonly, i8* noalias nocapture readonly) unnamed_addr #0 {
entry:
  %3 = bitcast i8* %0 to i32*
  %4 = bitcast i8* %1 to i32*
  %5 = bitcast i8* %2 to i32*
  br label %for_begin1.preheader

for_begin1.preheader:                             ; preds = %middle.block, %entry
  %indvar = phi i64 [ 0, %entry ], [ %indvar.next, %middle.block ]
  %6 = shl i64 %indvar, 3
  %7 = shl i64 %indvar, 8
  %8 = getelementptr inbounds i32, i32* %3, i64 %6
  store i32 0, i32* %8, align 4, !tbaa !121
  br label %vector.body171

vector.body171:                                   ; preds = %vector.body171, %for_begin1.preheader
  %index175 = phi i64 [ 0, %for_begin1.preheader ], [ %index.next176, %vector.body171 ]
  %vec.phi183 = phi <4 x i32> [ zeroinitializer, %for_begin1.preheader ], [ %22, %vector.body171 ]
  %vec.phi184 = phi <4 x i32> [ zeroinitializer, %for_begin1.preheader ], [ %23, %vector.body171 ]
  %9 = add nuw nsw i64 %index175, %7
  %10 = getelementptr inbounds i32, i32* %4, i64 %9
  %11 = bitcast i32* %10 to <4 x i32>*
  %wide.load185 = load <4 x i32>, <4 x i32>* %11, align 4, !tbaa !124
  %12 = getelementptr inbounds i32, i32* %10, i64 4
  %13 = bitcast i32* %12 to <4 x i32>*
  %wide.load186 = load <4 x i32>, <4 x i32>* %13, align 4, !tbaa !124
  %14 = getelementptr inbounds i32, i32* %5, i64 %index175
  %15 = bitcast i32* %14 to <4 x i32>*
  %wide.load187 = load <4 x i32>, <4 x i32>* %15, align 4, !tbaa !127
  %16 = getelementptr inbounds i32, i32* %14, i64 4
  %17 = bitcast i32* %16 to <4 x i32>*
  %wide.load188 = load <4 x i32>, <4 x i32>* %17, align 4, !tbaa !127
  %18 = and <4 x i32> %wide.load187, %wide.load185
  %19 = and <4 x i32> %wide.load188, %wide.load186
  %20 = call <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %18)
  %21 = call <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %19)
  %22 = add nuw <4 x i32> %20, %vec.phi183
  %23 = add nuw <4 x i32> %21, %vec.phi184
  %index.next176 = add i64 %index175, 8
  %24 = icmp eq i64 %index.next176, 256
  br i1 %24, label %middle.block172, label %vector.body171, !llvm.loop !130

middle.block172:                                  ; preds = %vector.body171
  %bin.rdx189 = add <4 x i32> %23, %22
  %rdx.shuf190 = shufflevector <4 x i32> %bin.rdx189, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx191 = add <4 x i32> %bin.rdx189, %rdx.shuf190
  %rdx.shuf192 = shufflevector <4 x i32> %bin.rdx191, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx193 = add <4 x i32> %bin.rdx191, %rdx.shuf192
  %25 = extractelement <4 x i32> %bin.rdx193, i32 0
  store i32 %25, i32* %8, align 4, !tbaa !121
  %26 = or i64 %6, 1
  %27 = getelementptr inbounds i32, i32* %3, i64 %26
  store i32 0, i32* %27, align 4, !tbaa !121
  br label %vector.body147

for_end:                                          ; preds = %middle.block
  ret void

vector.body147:                                   ; preds = %vector.body147, %middle.block172
  %index151 = phi i64 [ 0, %middle.block172 ], [ %index.next152, %vector.body147 ]
  %vec.phi159 = phi <4 x i32> [ zeroinitializer, %middle.block172 ], [ %42, %vector.body147 ]
  %vec.phi160 = phi <4 x i32> [ zeroinitializer, %middle.block172 ], [ %43, %vector.body147 ]
  %28 = add nuw nsw i64 %index151, %7
  %29 = getelementptr inbounds i32, i32* %4, i64 %28
  %30 = bitcast i32* %29 to <4 x i32>*
  %wide.load161 = load <4 x i32>, <4 x i32>* %30, align 4, !tbaa !124
  %31 = getelementptr inbounds i32, i32* %29, i64 4
  %32 = bitcast i32* %31 to <4 x i32>*
  %wide.load162 = load <4 x i32>, <4 x i32>* %32, align 4, !tbaa !124
  %33 = add nuw nsw i64 %index151, 256
  %34 = getelementptr inbounds i32, i32* %5, i64 %33
  %35 = bitcast i32* %34 to <4 x i32>*
  %wide.load163 = load <4 x i32>, <4 x i32>* %35, align 4, !tbaa !127
  %36 = getelementptr inbounds i32, i32* %34, i64 4
  %37 = bitcast i32* %36 to <4 x i32>*
  %wide.load164 = load <4 x i32>, <4 x i32>* %37, align 4, !tbaa !127
  %38 = and <4 x i32> %wide.load163, %wide.load161
  %39 = and <4 x i32> %wide.load164, %wide.load162
  %40 = call <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %38)
  %41 = call <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %39)
  %42 = add nuw <4 x i32> %40, %vec.phi159
  %43 = add nuw <4 x i32> %41, %vec.phi160
  %index.next152 = add i64 %index151, 8
  %44 = icmp eq i64 %index.next152, 256
  br i1 %44, label %middle.block148, label %vector.body147, !llvm.loop !132

middle.block148:                                  ; preds = %vector.body147
  %bin.rdx165 = add <4 x i32> %43, %42
  %rdx.shuf166 = shufflevector <4 x i32> %bin.rdx165, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx167 = add <4 x i32> %bin.rdx165, %rdx.shuf166
  %rdx.shuf168 = shufflevector <4 x i32> %bin.rdx167, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx169 = add <4 x i32> %bin.rdx167, %rdx.shuf168
  %45 = extractelement <4 x i32> %bin.rdx169, i32 0
  store i32 %45, i32* %27, align 4, !tbaa !121
  %46 = or i64 %6, 2
  %47 = getelementptr inbounds i32, i32* %3, i64 %46
  store i32 0, i32* %47, align 4, !tbaa !121
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %middle.block148
  %index127 = phi i64 [ 0, %middle.block148 ], [ %index.next128, %vector.body123 ]
  %vec.phi135 = phi <4 x i32> [ zeroinitializer, %middle.block148 ], [ %62, %vector.body123 ]
  %vec.phi136 = phi <4 x i32> [ zeroinitializer, %middle.block148 ], [ %63, %vector.body123 ]
  %48 = add nuw nsw i64 %index127, %7
  %49 = getelementptr inbounds i32, i32* %4, i64 %48
  %50 = bitcast i32* %49 to <4 x i32>*
  %wide.load137 = load <4 x i32>, <4 x i32>* %50, align 4, !tbaa !124
  %51 = getelementptr inbounds i32, i32* %49, i64 4
  %52 = bitcast i32* %51 to <4 x i32>*
  %wide.load138 = load <4 x i32>, <4 x i32>* %52, align 4, !tbaa !124
  %53 = add nuw nsw i64 %index127, 512
  %54 = getelementptr inbounds i32, i32* %5, i64 %53
  %55 = bitcast i32* %54 to <4 x i32>*
  %wide.load139 = load <4 x i32>, <4 x i32>* %55, align 4, !tbaa !127
  %56 = getelementptr inbounds i32, i32* %54, i64 4
  %57 = bitcast i32* %56 to <4 x i32>*
  %wide.load140 = load <4 x i32>, <4 x i32>* %57, align 4, !tbaa !127
  %58 = and <4 x i32> %wide.load139, %wide.load137
  %59 = and <4 x i32> %wide.load140, %wide.load138
  %60 = call <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %58)
  %61 = call <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %59)
  %62 = add nuw <4 x i32> %60, %vec.phi135
  %63 = add nuw <4 x i32> %61, %vec.phi136
  %index.next128 = add i64 %index127, 8
  %64 = icmp eq i64 %index.next128, 256
  br i1 %64, label %middle.block124, label %vector.body123, !llvm.loop !133

middle.block124:                                  ; preds = %vector.body123
  %bin.rdx141 = add <4 x i32> %63, %62
  %rdx.shuf142 = shufflevector <4 x i32> %bin.rdx141, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx143 = add <4 x i32> %bin.rdx141, %rdx.shuf142
  %rdx.shuf144 = shufflevector <4 x i32> %bin.rdx143, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx145 = add <4 x i32> %bin.rdx143, %rdx.shuf144
  %65 = extractelement <4 x i32> %bin.rdx145, i32 0
  store i32 %65, i32* %47, align 4, !tbaa !121
  %66 = or i64 %6, 3
  %67 = getelementptr inbounds i32, i32* %3, i64 %66
  store i32 0, i32* %67, align 4, !tbaa !121
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %middle.block124
  %index103 = phi i64 [ 0, %middle.block124 ], [ %index.next104, %vector.body99 ]
  %vec.phi111 = phi <4 x i32> [ zeroinitializer, %middle.block124 ], [ %82, %vector.body99 ]
  %vec.phi112 = phi <4 x i32> [ zeroinitializer, %middle.block124 ], [ %83, %vector.body99 ]
  %68 = add nuw nsw i64 %index103, %7
  %69 = getelementptr inbounds i32, i32* %4, i64 %68
  %70 = bitcast i32* %69 to <4 x i32>*
  %wide.load113 = load <4 x i32>, <4 x i32>* %70, align 4, !tbaa !124
  %71 = getelementptr inbounds i32, i32* %69, i64 4
  %72 = bitcast i32* %71 to <4 x i32>*
  %wide.load114 = load <4 x i32>, <4 x i32>* %72, align 4, !tbaa !124
  %73 = add nuw nsw i64 %index103, 768
  %74 = getelementptr inbounds i32, i32* %5, i64 %73
  %75 = bitcast i32* %74 to <4 x i32>*
  %wide.load115 = load <4 x i32>, <4 x i32>* %75, align 4, !tbaa !127
  %76 = getelementptr inbounds i32, i32* %74, i64 4
  %77 = bitcast i32* %76 to <4 x i32>*
  %wide.load116 = load <4 x i32>, <4 x i32>* %77, align 4, !tbaa !127
  %78 = and <4 x i32> %wide.load115, %wide.load113
  %79 = and <4 x i32> %wide.load116, %wide.load114
  %80 = call <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %78)
  %81 = call <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %79)
  %82 = add nuw <4 x i32> %80, %vec.phi111
  %83 = add nuw <4 x i32> %81, %vec.phi112
  %index.next104 = add i64 %index103, 8
  %84 = icmp eq i64 %index.next104, 256
  br i1 %84, label %middle.block100, label %vector.body99, !llvm.loop !134

middle.block100:                                  ; preds = %vector.body99
  %bin.rdx117 = add <4 x i32> %83, %82
  %rdx.shuf118 = shufflevector <4 x i32> %bin.rdx117, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx119 = add <4 x i32> %bin.rdx117, %rdx.shuf118
  %rdx.shuf120 = shufflevector <4 x i32> %bin.rdx119, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx121 = add <4 x i32> %bin.rdx119, %rdx.shuf120
  %85 = extractelement <4 x i32> %bin.rdx121, i32 0
  store i32 %85, i32* %67, align 4, !tbaa !121
  %86 = or i64 %6, 4
  %87 = getelementptr inbounds i32, i32* %3, i64 %86
  store i32 0, i32* %87, align 4, !tbaa !121
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %middle.block100
  %index79 = phi i64 [ 0, %middle.block100 ], [ %index.next80, %vector.body75 ]
  %vec.phi87 = phi <4 x i32> [ zeroinitializer, %middle.block100 ], [ %102, %vector.body75 ]
  %vec.phi88 = phi <4 x i32> [ zeroinitializer, %middle.block100 ], [ %103, %vector.body75 ]
  %88 = add nuw nsw i64 %index79, %7
  %89 = getelementptr inbounds i32, i32* %4, i64 %88
  %90 = bitcast i32* %89 to <4 x i32>*
  %wide.load89 = load <4 x i32>, <4 x i32>* %90, align 4, !tbaa !124
  %91 = getelementptr inbounds i32, i32* %89, i64 4
  %92 = bitcast i32* %91 to <4 x i32>*
  %wide.load90 = load <4 x i32>, <4 x i32>* %92, align 4, !tbaa !124
  %93 = add nuw nsw i64 %index79, 1024
  %94 = getelementptr inbounds i32, i32* %5, i64 %93
  %95 = bitcast i32* %94 to <4 x i32>*
  %wide.load91 = load <4 x i32>, <4 x i32>* %95, align 4, !tbaa !127
  %96 = getelementptr inbounds i32, i32* %94, i64 4
  %97 = bitcast i32* %96 to <4 x i32>*
  %wide.load92 = load <4 x i32>, <4 x i32>* %97, align 4, !tbaa !127
  %98 = and <4 x i32> %wide.load91, %wide.load89
  %99 = and <4 x i32> %wide.load92, %wide.load90
  %100 = call <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %98)
  %101 = call <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %99)
  %102 = add nuw <4 x i32> %100, %vec.phi87
  %103 = add nuw <4 x i32> %101, %vec.phi88
  %index.next80 = add i64 %index79, 8
  %104 = icmp eq i64 %index.next80, 256
  br i1 %104, label %middle.block76, label %vector.body75, !llvm.loop !135

middle.block76:                                   ; preds = %vector.body75
  %bin.rdx93 = add <4 x i32> %103, %102
  %rdx.shuf94 = shufflevector <4 x i32> %bin.rdx93, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx95 = add <4 x i32> %bin.rdx93, %rdx.shuf94
  %rdx.shuf96 = shufflevector <4 x i32> %bin.rdx95, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx97 = add <4 x i32> %bin.rdx95, %rdx.shuf96
  %105 = extractelement <4 x i32> %bin.rdx97, i32 0
  store i32 %105, i32* %87, align 4, !tbaa !121
  %106 = or i64 %6, 5
  %107 = getelementptr inbounds i32, i32* %3, i64 %106
  store i32 0, i32* %107, align 4, !tbaa !121
  br label %vector.body51

vector.body51:                                    ; preds = %vector.body51, %middle.block76
  %index55 = phi i64 [ 0, %middle.block76 ], [ %index.next56, %vector.body51 ]
  %vec.phi63 = phi <4 x i32> [ zeroinitializer, %middle.block76 ], [ %122, %vector.body51 ]
  %vec.phi64 = phi <4 x i32> [ zeroinitializer, %middle.block76 ], [ %123, %vector.body51 ]
  %108 = add nuw nsw i64 %index55, %7
  %109 = getelementptr inbounds i32, i32* %4, i64 %108
  %110 = bitcast i32* %109 to <4 x i32>*
  %wide.load65 = load <4 x i32>, <4 x i32>* %110, align 4, !tbaa !124
  %111 = getelementptr inbounds i32, i32* %109, i64 4
  %112 = bitcast i32* %111 to <4 x i32>*
  %wide.load66 = load <4 x i32>, <4 x i32>* %112, align 4, !tbaa !124
  %113 = add nuw nsw i64 %index55, 1280
  %114 = getelementptr inbounds i32, i32* %5, i64 %113
  %115 = bitcast i32* %114 to <4 x i32>*
  %wide.load67 = load <4 x i32>, <4 x i32>* %115, align 4, !tbaa !127
  %116 = getelementptr inbounds i32, i32* %114, i64 4
  %117 = bitcast i32* %116 to <4 x i32>*
  %wide.load68 = load <4 x i32>, <4 x i32>* %117, align 4, !tbaa !127
  %118 = and <4 x i32> %wide.load67, %wide.load65
  %119 = and <4 x i32> %wide.load68, %wide.load66
  %120 = call <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %118)
  %121 = call <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %119)
  %122 = add nuw <4 x i32> %120, %vec.phi63
  %123 = add nuw <4 x i32> %121, %vec.phi64
  %index.next56 = add i64 %index55, 8
  %124 = icmp eq i64 %index.next56, 256
  br i1 %124, label %middle.block52, label %vector.body51, !llvm.loop !136

middle.block52:                                   ; preds = %vector.body51
  %bin.rdx69 = add <4 x i32> %123, %122
  %rdx.shuf70 = shufflevector <4 x i32> %bin.rdx69, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx71 = add <4 x i32> %bin.rdx69, %rdx.shuf70
  %rdx.shuf72 = shufflevector <4 x i32> %bin.rdx71, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx73 = add <4 x i32> %bin.rdx71, %rdx.shuf72
  %125 = extractelement <4 x i32> %bin.rdx73, i32 0
  store i32 %125, i32* %107, align 4, !tbaa !121
  %126 = or i64 %6, 6
  %127 = getelementptr inbounds i32, i32* %3, i64 %126
  store i32 0, i32* %127, align 4, !tbaa !121
  br label %vector.body27

vector.body27:                                    ; preds = %vector.body27, %middle.block52
  %index31 = phi i64 [ 0, %middle.block52 ], [ %index.next32, %vector.body27 ]
  %vec.phi39 = phi <4 x i32> [ zeroinitializer, %middle.block52 ], [ %142, %vector.body27 ]
  %vec.phi40 = phi <4 x i32> [ zeroinitializer, %middle.block52 ], [ %143, %vector.body27 ]
  %128 = add nuw nsw i64 %index31, %7
  %129 = getelementptr inbounds i32, i32* %4, i64 %128
  %130 = bitcast i32* %129 to <4 x i32>*
  %wide.load41 = load <4 x i32>, <4 x i32>* %130, align 4, !tbaa !124
  %131 = getelementptr inbounds i32, i32* %129, i64 4
  %132 = bitcast i32* %131 to <4 x i32>*
  %wide.load42 = load <4 x i32>, <4 x i32>* %132, align 4, !tbaa !124
  %133 = add nuw nsw i64 %index31, 1536
  %134 = getelementptr inbounds i32, i32* %5, i64 %133
  %135 = bitcast i32* %134 to <4 x i32>*
  %wide.load43 = load <4 x i32>, <4 x i32>* %135, align 4, !tbaa !127
  %136 = getelementptr inbounds i32, i32* %134, i64 4
  %137 = bitcast i32* %136 to <4 x i32>*
  %wide.load44 = load <4 x i32>, <4 x i32>* %137, align 4, !tbaa !127
  %138 = and <4 x i32> %wide.load43, %wide.load41
  %139 = and <4 x i32> %wide.load44, %wide.load42
  %140 = call <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %138)
  %141 = call <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %139)
  %142 = add nuw <4 x i32> %140, %vec.phi39
  %143 = add nuw <4 x i32> %141, %vec.phi40
  %index.next32 = add i64 %index31, 8
  %144 = icmp eq i64 %index.next32, 256
  br i1 %144, label %middle.block28, label %vector.body27, !llvm.loop !137

middle.block28:                                   ; preds = %vector.body27
  %bin.rdx45 = add <4 x i32> %143, %142
  %rdx.shuf46 = shufflevector <4 x i32> %bin.rdx45, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx47 = add <4 x i32> %bin.rdx45, %rdx.shuf46
  %rdx.shuf48 = shufflevector <4 x i32> %bin.rdx47, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx49 = add <4 x i32> %bin.rdx47, %rdx.shuf48
  %145 = extractelement <4 x i32> %bin.rdx49, i32 0
  store i32 %145, i32* %127, align 4, !tbaa !121
  %146 = or i64 %6, 7
  %147 = getelementptr inbounds i32, i32* %3, i64 %146
  store i32 0, i32* %147, align 4, !tbaa !121
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %middle.block28
  %index = phi i64 [ 0, %middle.block28 ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %middle.block28 ], [ %162, %vector.body ]
  %vec.phi20 = phi <4 x i32> [ zeroinitializer, %middle.block28 ], [ %163, %vector.body ]
  %148 = add nuw nsw i64 %index, %7
  %149 = getelementptr inbounds i32, i32* %4, i64 %148
  %150 = bitcast i32* %149 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %150, align 4, !tbaa !124
  %151 = getelementptr inbounds i32, i32* %149, i64 4
  %152 = bitcast i32* %151 to <4 x i32>*
  %wide.load21 = load <4 x i32>, <4 x i32>* %152, align 4, !tbaa !124
  %153 = add nuw nsw i64 %index, 1792
  %154 = getelementptr inbounds i32, i32* %5, i64 %153
  %155 = bitcast i32* %154 to <4 x i32>*
  %wide.load22 = load <4 x i32>, <4 x i32>* %155, align 4, !tbaa !127
  %156 = getelementptr inbounds i32, i32* %154, i64 4
  %157 = bitcast i32* %156 to <4 x i32>*
  %wide.load23 = load <4 x i32>, <4 x i32>* %157, align 4, !tbaa !127
  %158 = and <4 x i32> %wide.load22, %wide.load
  %159 = and <4 x i32> %wide.load23, %wide.load21
  %160 = call <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %158)
  %161 = call <4 x i32> @llvm.ctpop.v4i32(<4 x i32> %159)
  %162 = add nuw <4 x i32> %160, %vec.phi
  %163 = add nuw <4 x i32> %161, %vec.phi20
  %index.next = add i64 %index, 8
  %164 = icmp eq i64 %index.next, 256
  br i1 %164, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %163, %162
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx24 = add <4 x i32> %bin.rdx, %rdx.shuf
  %rdx.shuf25 = shufflevector <4 x i32> %bin.rdx24, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx26 = add <4 x i32> %bin.rdx24, %rdx.shuf25
  %165 = extractelement <4 x i32> %bin.rdx26, i32 0
  store i32 %165, i32* %147, align 4, !tbaa !121
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond4 = icmp eq i64 %indvar.next, 8
  br i1 %exitcond4, label %for_end, label %for_begin1.preheader, !prof !24
}

; Function Attrs: nounwind readnone speculatable
declare <4 x i32> @llvm.ctpop.v4i32(<4 x i32>) #1

attributes #0 = { noinline nounwind }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!0}

!0 = !{i32 2, !"tvm_target", !"llvm"}
!1 = !{!"branch_weights", i32 1048576, i32 1}
!2 = !{!3, !3, i64 0}
!3 = !{!"ctx_ptr", !4, i64 0}
!4 = !{!"tvm-tbaa"}
!5 = !{!6, !6, i64 0}
!6 = !{!"0x7f93a8eaed80.w1.b0", !7, i64 0}
!7 = !{!"0x7f93a8eaed80.w2.b0", !8, i64 0}
!8 = !{!"0x7f93a8eaed80.w4.b0", !9, i64 0}
!9 = !{!"0x7f93a8eaed80.w8.b0", !10, i64 0}
!10 = !{!"0x7f93a8eaed80.w16.b0", !11, i64 0}
!11 = !{!"0x7f93a8eaed80.w32.b0", !12, i64 0}
!12 = !{!"0x7f93a8eaed80.w64.b0", !13, i64 0}
!13 = !{!"0x7f93a8eaed80.w128.b0", !14, i64 0}
!14 = !{!"0x7f93a8eaed80.w256.b0", !15, i64 0}
!15 = !{!"0x7f93a8eaed80.w512.b0", !16, i64 0}
!16 = !{!"0x7f93a8eaed80.w1024.b0", !17, i64 0}
!17 = !{!"int32", !18, i64 0}
!18 = !{!"0x7f93a8eaed80", !4, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"0x7f93a8eaed80.w1.b1", !7, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"0x7f93a8eaed80.w1.b2", !23, i64 0}
!23 = !{!"0x7f93a8eaed80.w2.b2", !8, i64 0}
!24 = !{!"branch_weights", i32 1, i32 1048576}
!25 = !{!26, !26, i64 0}
!26 = !{!"0x7f93a8eb16d0.w1.b1", !27, i64 0}
!27 = !{!"0x7f93a8eb16d0.w2.b0", !28, i64 0}
!28 = !{!"0x7f93a8eb16d0.w4.b0", !29, i64 0}
!29 = !{!"0x7f93a8eb16d0.w8.b0", !30, i64 0}
!30 = !{!"0x7f93a8eb16d0.w16.b0", !31, i64 0}
!31 = !{!"0x7f93a8eb16d0.w32.b0", !32, i64 0}
!32 = !{!"0x7f93a8eb16d0.w64.b0", !33, i64 0}
!33 = !{!"0x7f93a8eb16d0.w128.b0", !34, i64 0}
!34 = !{!"0x7f93a8eb16d0.w256.b0", !35, i64 0}
!35 = !{!"0x7f93a8eb16d0.w512.b0", !36, i64 0}
!36 = !{!"0x7f93a8eb16d0.w1024.b0", !37, i64 0}
!37 = !{!"int64", !38, i64 0}
!38 = !{!"0x7f93a8eb16d0", !4, i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"0x7f93a8eb16d0.w1.b0", !27, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"0x7f93a8eb3bf0.w1.b1", !43, i64 0}
!43 = !{!"0x7f93a8eb3bf0.w2.b0", !44, i64 0}
!44 = !{!"0x7f93a8eb3bf0.w4.b0", !45, i64 0}
!45 = !{!"0x7f93a8eb3bf0.w8.b0", !46, i64 0}
!46 = !{!"0x7f93a8eb3bf0.w16.b0", !47, i64 0}
!47 = !{!"0x7f93a8eb3bf0.w32.b0", !48, i64 0}
!48 = !{!"0x7f93a8eb3bf0.w64.b0", !49, i64 0}
!49 = !{!"0x7f93a8eb3bf0.w128.b0", !50, i64 0}
!50 = !{!"0x7f93a8eb3bf0.w256.b0", !51, i64 0}
!51 = !{!"0x7f93a8eb3bf0.w512.b0", !52, i64 0}
!52 = !{!"0x7f93a8eb3bf0.w1024.b0", !53, i64 0}
!53 = !{!"int64", !54, i64 0}
!54 = !{!"0x7f93a8eb3bf0", !4, i64 0}
!55 = !{!56, !56, i64 0}
!56 = !{!"0x7f93a8eb3bf0.w1.b0", !43, i64 0}
!57 = !{!58, !58, i64 0}
!58 = !{!"0x7f93a8eb6220.w1.b1", !59, i64 0}
!59 = !{!"0x7f93a8eb6220.w2.b0", !60, i64 0}
!60 = !{!"0x7f93a8eb6220.w4.b0", !61, i64 0}
!61 = !{!"0x7f93a8eb6220.w8.b0", !62, i64 0}
!62 = !{!"0x7f93a8eb6220.w16.b0", !63, i64 0}
!63 = !{!"0x7f93a8eb6220.w32.b0", !64, i64 0}
!64 = !{!"0x7f93a8eb6220.w64.b0", !65, i64 0}
!65 = !{!"0x7f93a8eb6220.w128.b0", !66, i64 0}
!66 = !{!"0x7f93a8eb6220.w256.b0", !67, i64 0}
!67 = !{!"0x7f93a8eb6220.w512.b0", !68, i64 0}
!68 = !{!"0x7f93a8eb6220.w1024.b0", !69, i64 0}
!69 = !{!"int64", !70, i64 0}
!70 = !{!"0x7f93a8eb6220", !4, i64 0}
!71 = !{!72, !72, i64 0}
!72 = !{!"0x7f93a8eb6220.w1.b0", !59, i64 0}
!73 = !{!74, !74, i64 0}
!74 = !{!"0x7f93a8eb11d0.w1.b0", !75, i64 0}
!75 = !{!"0x7f93a8eb11d0.w2.b0", !76, i64 0}
!76 = !{!"0x7f93a8eb11d0.w4.b0", !77, i64 0}
!77 = !{!"0x7f93a8eb11d0.w8.b0", !78, i64 0}
!78 = !{!"0x7f93a8eb11d0.w16.b0", !79, i64 0}
!79 = !{!"0x7f93a8eb11d0.w32.b0", !80, i64 0}
!80 = !{!"0x7f93a8eb11d0.w64.b0", !81, i64 0}
!81 = !{!"0x7f93a8eb11d0.w128.b0", !82, i64 0}
!82 = !{!"0x7f93a8eb11d0.w256.b0", !83, i64 0}
!83 = !{!"0x7f93a8eb11d0.w512.b0", !84, i64 0}
!84 = !{!"0x7f93a8eb11d0.w1024.b0", !85, i64 0}
!85 = !{!"int64", !86, i64 0}
!86 = !{!"0x7f93a8eb11d0", !4, i64 0}
!87 = !{!88, !88, i64 0}
!88 = !{!"0x7f93a8eb11d0.w1.b1", !75, i64 0}
!89 = !{!90, !90, i64 0}
!90 = !{!"0x7f93a8eb2030.w1.b0", !91, i64 0}
!91 = !{!"0x7f93a8eb2030.w2.b0", !92, i64 0}
!92 = !{!"0x7f93a8eb2030.w4.b0", !93, i64 0}
!93 = !{!"0x7f93a8eb2030.w8.b0", !94, i64 0}
!94 = !{!"0x7f93a8eb2030.w16.b0", !95, i64 0}
!95 = !{!"0x7f93a8eb2030.w32.b0", !96, i64 0}
!96 = !{!"0x7f93a8eb2030.w64.b0", !97, i64 0}
!97 = !{!"0x7f93a8eb2030.w128.b0", !98, i64 0}
!98 = !{!"0x7f93a8eb2030.w256.b0", !99, i64 0}
!99 = !{!"0x7f93a8eb2030.w512.b0", !100, i64 0}
!100 = !{!"0x7f93a8eb2030.w1024.b0", !101, i64 0}
!101 = !{!"int64", !102, i64 0}
!102 = !{!"0x7f93a8eb2030", !4, i64 0}
!103 = !{!104, !104, i64 0}
!104 = !{!"0x7f93a8eb2030.w1.b1", !91, i64 0}
!105 = !{!106, !106, i64 0}
!106 = !{!"0x7f93a8eb5d60.w1.b0", !107, i64 0}
!107 = !{!"0x7f93a8eb5d60.w2.b0", !108, i64 0}
!108 = !{!"0x7f93a8eb5d60.w4.b0", !109, i64 0}
!109 = !{!"0x7f93a8eb5d60.w8.b0", !110, i64 0}
!110 = !{!"0x7f93a8eb5d60.w16.b0", !111, i64 0}
!111 = !{!"0x7f93a8eb5d60.w32.b0", !112, i64 0}
!112 = !{!"0x7f93a8eb5d60.w64.b0", !113, i64 0}
!113 = !{!"0x7f93a8eb5d60.w128.b0", !114, i64 0}
!114 = !{!"0x7f93a8eb5d60.w256.b0", !115, i64 0}
!115 = !{!"0x7f93a8eb5d60.w512.b0", !116, i64 0}
!116 = !{!"0x7f93a8eb5d60.w1024.b0", !117, i64 0}
!117 = !{!"int64", !118, i64 0}
!118 = !{!"0x7f93a8eb5d60", !4, i64 0}
!119 = !{!120, !120, i64 0}
!120 = !{!"0x7f93a8eb5d60.w1.b1", !107, i64 0}
!121 = !{!122, !122, i64 0}
!122 = !{!"uint32", !123, i64 0}
!123 = !{!"0x7f93a8ead200", !4, i64 0}
!124 = !{!125, !125, i64 0}
!125 = !{!"uint32", !126, i64 0}
!126 = !{!"0x7f93a8eaa5d0", !4, i64 0}
!127 = !{!128, !128, i64 0}
!128 = !{!"uint32", !129, i64 0}
!129 = !{!"0x7f93a8eacf70", !4, i64 0}
!130 = distinct !{!130, !131}
!131 = !{!"llvm.loop.isvectorized", i32 1}
!132 = distinct !{!132, !131}
!133 = distinct !{!133, !131}
!134 = distinct !{!134, !131}
!135 = distinct !{!135, !131}
!136 = distinct !{!136, !131}
!137 = distinct !{!137, !131}
!138 = distinct !{!138, !131}
