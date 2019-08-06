	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 14
	.globl	_default_function
	.p2align	4, 0x90
_default_function:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	cmpl	$3, %edx
	jne	LBB0_1
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	movl	(%rsi), %ebp
	movl	4(%rsi), %r13d
	movq	16(%rdi), %r11
	movl	8(%rsi), %r15d
	movq	(%rax), %rsi
	movq	24(%rax), %r14
	movq	32(%rax), %rdx
	testq	%rdx, %rdx
	je	LBB0_7
	cmpl	$1, 8(%rdx)
	jne	LBB0_69
	cmpl	$256, (%rdx)
	jne	LBB0_69
LBB0_7:
	movl	8(%rax), %r12d
	movl	12(%rax), %r8d
	movq	(%rcx), %rdx
	movq	24(%rcx), %r10
	movq	32(%rcx), %rdi
	testq	%rdi, %rdi
	je	LBB0_10
	cmpl	$1, 8(%rdi)
	jne	LBB0_70
	cmpl	$256, (%rdi)
	jne	LBB0_70
LBB0_10:
	movq	(%r11), %rdi
	movq	24(%r11), %r9
	movq	32(%r11), %rbx
	testq	%rbx, %rbx
	je	LBB0_13
	cmpl	$1, 8(%rbx)
	jne	LBB0_71
	cmpl	$8, (%rbx)
	jne	LBB0_71
LBB0_13:
	cmpl	$13, %ebp
	ja	LBB0_15
	movl	$8344, %ebx
	btl	%ebp, %ebx
	jae	LBB0_15
	cmpl	$13, %r13d
	ja	LBB0_18
	movl	$8344, %ebx
	btl	%r13d, %ebx
	jae	LBB0_18
	cmpl	$13, %r15d
	ja	LBB0_21
	movl	$8344, %ebx
	btl	%r15d, %ebx
	jae	LBB0_21
	cmpl	$1, %r12d
	jne	LBB0_23
	cmpl	$2, 16(%rax)
	jne	LBB0_25
	cmpb	$1, 20(%rax)
	jne	LBB0_29
	cmpb	$32, 21(%rax)
	jne	LBB0_29
	movzwl	22(%rax), %ebx
	cmpl	$1, %ebx
	jne	LBB0_29
	cmpl	$8, (%r14)
	jne	LBB0_31
	cmpl	$256, 8(%r14)
	jne	LBB0_33
	cmpq	$0, 40(%rax)
	jne	LBB0_35
	cmpl	$2, 16(%rcx)
	jne	LBB0_37
	cmpb	$1, 20(%rcx)
	jne	LBB0_41
	cmpb	$32, 21(%rcx)
	jne	LBB0_41
	movzwl	22(%rcx), %eax
	cmpl	$1, %eax
	jne	LBB0_41
	cmpl	$8, (%r10)
	jne	LBB0_43
	cmpl	$256, 8(%r10)
	jne	LBB0_45
	cmpq	$0, 40(%rcx)
	jne	LBB0_47
	cmpl	$1, 8(%rcx)
	jne	LBB0_49
	cmpl	12(%rcx), %r8d
	jne	LBB0_51
	cmpl	$2, 16(%r11)
	jne	LBB0_53
	cmpb	$1, 20(%r11)
	jne	LBB0_57
	cmpb	$32, 21(%r11)
	jne	LBB0_57
	movzwl	22(%r11), %eax
	cmpl	$1, %eax
	jne	LBB0_57
	cmpl	$8, (%r9)
	jne	LBB0_59
	cmpl	$8, 8(%r9)
	jne	LBB0_61
	cmpq	$0, 40(%r11)
	jne	LBB0_63
	cmpl	$1, 8(%r11)
	jne	LBB0_65
	cmpl	12(%r11), %r8d
	jne	LBB0_67
	callq	l_default_function_compute_
	xorl	%eax, %eax
	jmp	LBB0_3
LBB0_15:
	movq	___TVMAPISetLastError@GOTPCREL(%rip), %rax
	leaq	l_.str.4(%rip), %rdi
	jmp	LBB0_2
LBB0_18:
	movq	___TVMAPISetLastError@GOTPCREL(%rip), %rax
	leaq	l_.str.5(%rip), %rdi
	jmp	LBB0_2
LBB0_21:
	movq	___TVMAPISetLastError@GOTPCREL(%rip), %rax
	leaq	l_.str.6(%rip), %rdi
LBB0_2:
	callq	*(%rax)
	movl	$-1, %eax
LBB0_3:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB0_1:
	movq	___TVMAPISetLastError@GOTPCREL(%rip), %rax
	leaq	l_.str(%rip), %rdi
	jmp	LBB0_2
LBB0_69:
	movq	___TVMAPISetLastError@GOTPCREL(%rip), %rax
	leaq	l_.str.1(%rip), %rdi
	jmp	LBB0_2
LBB0_70:
	movq	___TVMAPISetLastError@GOTPCREL(%rip), %rax
	leaq	l_.str.2(%rip), %rdi
	jmp	LBB0_2
LBB0_71:
	movq	___TVMAPISetLastError@GOTPCREL(%rip), %rax
	leaq	l_.str.3(%rip), %rdi
	jmp	LBB0_2
LBB0_23:
	movq	___TVMAPISetLastError@GOTPCREL(%rip), %rax
	leaq	l_.str.7(%rip), %rdi
	jmp	LBB0_2
LBB0_25:
	movq	___TVMAPISetLastError@GOTPCREL(%rip), %rax
	leaq	l_.str.8(%rip), %rdi
	jmp	LBB0_2
LBB0_29:
	movq	___TVMAPISetLastError@GOTPCREL(%rip), %rax
	leaq	l_.str.9(%rip), %rdi
	jmp	LBB0_2
LBB0_31:
	movq	___TVMAPISetLastError@GOTPCREL(%rip), %rax
	leaq	l_.str.10(%rip), %rdi
	jmp	LBB0_2
LBB0_33:
	movq	___TVMAPISetLastError@GOTPCREL(%rip), %rax
	leaq	l_.str.11(%rip), %rdi
	jmp	LBB0_2
LBB0_35:
	movq	___TVMAPISetLastError@GOTPCREL(%rip), %rax
	leaq	l_.str.12(%rip), %rdi
	jmp	LBB0_2
LBB0_37:
	movq	___TVMAPISetLastError@GOTPCREL(%rip), %rax
	leaq	l_.str.13(%rip), %rdi
	jmp	LBB0_2
LBB0_41:
	movq	___TVMAPISetLastError@GOTPCREL(%rip), %rax
	leaq	l_.str.14(%rip), %rdi
	jmp	LBB0_2
LBB0_43:
	movq	___TVMAPISetLastError@GOTPCREL(%rip), %rax
	leaq	l_.str.15(%rip), %rdi
	jmp	LBB0_2
LBB0_45:
	movq	___TVMAPISetLastError@GOTPCREL(%rip), %rax
	leaq	l_.str.16(%rip), %rdi
	jmp	LBB0_2
LBB0_47:
	movq	___TVMAPISetLastError@GOTPCREL(%rip), %rax
	leaq	l_.str.17(%rip), %rdi
	jmp	LBB0_2
LBB0_49:
	movq	___TVMAPISetLastError@GOTPCREL(%rip), %rax
	leaq	l_.str.18(%rip), %rdi
	jmp	LBB0_2
LBB0_51:
	movq	___TVMAPISetLastError@GOTPCREL(%rip), %rax
	leaq	l_.str.19(%rip), %rdi
	jmp	LBB0_2
LBB0_53:
	movq	___TVMAPISetLastError@GOTPCREL(%rip), %rax
	leaq	l_.str.20(%rip), %rdi
	jmp	LBB0_2
LBB0_57:
	movq	___TVMAPISetLastError@GOTPCREL(%rip), %rax
	leaq	l_.str.21(%rip), %rdi
	jmp	LBB0_2
LBB0_59:
	movq	___TVMAPISetLastError@GOTPCREL(%rip), %rax
	leaq	l_.str.22(%rip), %rdi
	jmp	LBB0_2
LBB0_61:
	movq	___TVMAPISetLastError@GOTPCREL(%rip), %rax
	leaq	l_.str.23(%rip), %rdi
	jmp	LBB0_2
LBB0_63:
	movq	___TVMAPISetLastError@GOTPCREL(%rip), %rax
	leaq	l_.str.24(%rip), %rdi
	jmp	LBB0_2
LBB0_65:
	movq	___TVMAPISetLastError@GOTPCREL(%rip), %rax
	leaq	l_.str.25(%rip), %rdi
	jmp	LBB0_2
LBB0_67:
	movq	___TVMAPISetLastError@GOTPCREL(%rip), %rax
	leaq	l_.str.26(%rip), %rdi
	jmp	LBB0_2
	.cfi_endproc

	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI1_0:
	.space	16,85
LCPI1_1:
	.space	16,51
LCPI1_2:
	.space	16,15
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	4, 0x90
l_default_function_compute_:
	addq	$16, %rsi
	xorl	%r8d, %r8d
	movdqa	LCPI1_0(%rip), %xmm8
	movdqa	LCPI1_1(%rip), %xmm1
	movdqa	LCPI1_2(%rip), %xmm9
	pxor	%xmm3, %xmm3
	.p2align	4, 0x90
LBB1_1:
	leaq	(,%r8,8), %r9
	movq	%r8, %rax
	shlq	$5, %rax
	movl	$0, (%rdi,%rax)
	movq	$-1024, %rax
	pxor	%xmm5, %xmm5
	pxor	%xmm4, %xmm4
	.p2align	4, 0x90
LBB1_2:
	movdqu	1008(%rsi,%rax), %xmm6
	movdqu	1024(%rsi,%rax), %xmm7
	movdqu	1024(%rdx,%rax), %xmm0
	pand	%xmm6, %xmm0
	movdqu	1040(%rdx,%rax), %xmm6
	pand	%xmm7, %xmm6
	movdqa	%xmm0, %xmm7
	psrld	$1, %xmm7
	pand	%xmm8, %xmm7
	psubd	%xmm7, %xmm0
	movdqa	%xmm0, %xmm7
	pand	%xmm1, %xmm7
	psrld	$2, %xmm0
	pand	%xmm1, %xmm0
	paddd	%xmm7, %xmm0
	movdqa	%xmm0, %xmm7
	psrld	$4, %xmm7
	paddd	%xmm0, %xmm7
	pand	%xmm9, %xmm7
	movdqa	%xmm7, %xmm0
	punpckhdq	%xmm3, %xmm0
	psadbw	%xmm3, %xmm0
	punpckldq	%xmm3, %xmm7
	psadbw	%xmm3, %xmm7
	packuswb	%xmm0, %xmm7
	paddd	%xmm7, %xmm5
	movdqa	%xmm6, %xmm0
	psrld	$1, %xmm0
	pand	%xmm8, %xmm0
	psubd	%xmm0, %xmm6
	movdqa	%xmm6, %xmm0
	pand	%xmm1, %xmm0
	psrld	$2, %xmm6
	pand	%xmm1, %xmm6
	paddd	%xmm0, %xmm6
	movdqa	%xmm6, %xmm0
	psrld	$4, %xmm0
	paddd	%xmm6, %xmm0
	pand	%xmm9, %xmm0
	movdqa	%xmm0, %xmm6
	punpckhdq	%xmm3, %xmm6
	psadbw	%xmm3, %xmm6
	punpckldq	%xmm3, %xmm0
	psadbw	%xmm3, %xmm0
	packuswb	%xmm6, %xmm0
	paddd	%xmm0, %xmm4
	addq	$32, %rax
	jne	LBB1_2
	paddd	%xmm5, %xmm4
	pshufd	$78, %xmm4, %xmm0
	paddd	%xmm4, %xmm0
	pshufd	$229, %xmm0, %xmm4
	paddd	%xmm0, %xmm4
	movd	%xmm4, (%rdi,%r9,4)
	movq	%r9, %rcx
	orq	$1, %rcx
	movl	$0, (%rdi,%rcx,4)
	pxor	%xmm4, %xmm4
	movq	$-1024, %rax
	pxor	%xmm5, %xmm5
	.p2align	4, 0x90
LBB1_4:
	movdqu	1008(%rsi,%rax), %xmm0
	movdqu	1024(%rsi,%rax), %xmm7
	movdqu	2048(%rdx,%rax), %xmm2
	pand	%xmm0, %xmm2
	movdqu	2064(%rdx,%rax), %xmm6
	pand	%xmm7, %xmm6
	movdqa	%xmm2, %xmm0
	psrld	$1, %xmm0
	pand	%xmm8, %xmm0
	psubd	%xmm0, %xmm2
	movdqa	%xmm2, %xmm0
	pand	%xmm1, %xmm0
	psrld	$2, %xmm2
	pand	%xmm1, %xmm2
	paddd	%xmm0, %xmm2
	movdqa	%xmm2, %xmm0
	psrld	$4, %xmm0
	paddd	%xmm2, %xmm0
	pand	%xmm9, %xmm0
	movdqa	%xmm0, %xmm2
	punpckhdq	%xmm3, %xmm2
	psadbw	%xmm3, %xmm2
	punpckldq	%xmm3, %xmm0
	psadbw	%xmm3, %xmm0
	packuswb	%xmm2, %xmm0
	paddd	%xmm0, %xmm4
	movdqa	%xmm6, %xmm0
	psrld	$1, %xmm0
	pand	%xmm8, %xmm0
	psubd	%xmm0, %xmm6
	movdqa	%xmm6, %xmm0
	pand	%xmm1, %xmm0
	psrld	$2, %xmm6
	pand	%xmm1, %xmm6
	paddd	%xmm0, %xmm6
	movdqa	%xmm6, %xmm0
	psrld	$4, %xmm0
	paddd	%xmm6, %xmm0
	pand	%xmm9, %xmm0
	movdqa	%xmm0, %xmm2
	punpckhdq	%xmm3, %xmm2
	psadbw	%xmm3, %xmm2
	punpckldq	%xmm3, %xmm0
	psadbw	%xmm3, %xmm0
	packuswb	%xmm2, %xmm0
	paddd	%xmm0, %xmm5
	addq	$32, %rax
	jne	LBB1_4
	paddd	%xmm4, %xmm5
	pshufd	$78, %xmm5, %xmm0
	paddd	%xmm5, %xmm0
	pshufd	$229, %xmm0, %xmm2
	paddd	%xmm0, %xmm2
	movd	%xmm2, (%rdi,%rcx,4)
	movq	%r9, %rcx
	orq	$2, %rcx
	movl	$0, (%rdi,%rcx,4)
	pxor	%xmm4, %xmm4
	movq	$-1024, %rax
	pxor	%xmm5, %xmm5
	.p2align	4, 0x90
LBB1_6:
	movdqu	1008(%rsi,%rax), %xmm0
	movdqu	1024(%rsi,%rax), %xmm2
	movdqu	3072(%rdx,%rax), %xmm7
	pand	%xmm0, %xmm7
	movdqu	3088(%rdx,%rax), %xmm6
	pand	%xmm2, %xmm6
	movdqa	%xmm7, %xmm0
	psrld	$1, %xmm0
	pand	%xmm8, %xmm0
	psubd	%xmm0, %xmm7
	movdqa	%xmm7, %xmm0
	pand	%xmm1, %xmm0
	psrld	$2, %xmm7
	pand	%xmm1, %xmm7
	paddd	%xmm0, %xmm7
	movdqa	%xmm7, %xmm0
	psrld	$4, %xmm0
	paddd	%xmm7, %xmm0
	pand	%xmm9, %xmm0
	movdqa	%xmm0, %xmm2
	punpckhdq	%xmm3, %xmm2
	psadbw	%xmm3, %xmm2
	punpckldq	%xmm3, %xmm0
	psadbw	%xmm3, %xmm0
	packuswb	%xmm2, %xmm0
	paddd	%xmm0, %xmm4
	movdqa	%xmm6, %xmm0
	psrld	$1, %xmm0
	pand	%xmm8, %xmm0
	psubd	%xmm0, %xmm6
	movdqa	%xmm6, %xmm0
	pand	%xmm1, %xmm0
	psrld	$2, %xmm6
	pand	%xmm1, %xmm6
	paddd	%xmm0, %xmm6
	movdqa	%xmm6, %xmm0
	psrld	$4, %xmm0
	paddd	%xmm6, %xmm0
	pand	%xmm9, %xmm0
	movdqa	%xmm0, %xmm2
	punpckhdq	%xmm3, %xmm2
	psadbw	%xmm3, %xmm2
	punpckldq	%xmm3, %xmm0
	psadbw	%xmm3, %xmm0
	packuswb	%xmm2, %xmm0
	paddd	%xmm0, %xmm5
	addq	$32, %rax
	jne	LBB1_6
	paddd	%xmm4, %xmm5
	pshufd	$78, %xmm5, %xmm0
	paddd	%xmm5, %xmm0
	pshufd	$229, %xmm0, %xmm2
	paddd	%xmm0, %xmm2
	movd	%xmm2, (%rdi,%rcx,4)
	movq	%r9, %rcx
	orq	$3, %rcx
	movl	$0, (%rdi,%rcx,4)
	pxor	%xmm4, %xmm4
	movq	$-1024, %rax
	pxor	%xmm5, %xmm5
	.p2align	4, 0x90
LBB1_8:
	movdqu	1008(%rsi,%rax), %xmm0
	movdqu	1024(%rsi,%rax), %xmm2
	movdqu	4096(%rdx,%rax), %xmm7
	pand	%xmm0, %xmm7
	movdqu	4112(%rdx,%rax), %xmm6
	pand	%xmm2, %xmm6
	movdqa	%xmm7, %xmm0
	psrld	$1, %xmm0
	pand	%xmm8, %xmm0
	psubd	%xmm0, %xmm7
	movdqa	%xmm7, %xmm0
	pand	%xmm1, %xmm0
	psrld	$2, %xmm7
	pand	%xmm1, %xmm7
	paddd	%xmm0, %xmm7
	movdqa	%xmm7, %xmm0
	psrld	$4, %xmm0
	paddd	%xmm7, %xmm0
	pand	%xmm9, %xmm0
	movdqa	%xmm0, %xmm2
	punpckhdq	%xmm3, %xmm2
	psadbw	%xmm3, %xmm2
	punpckldq	%xmm3, %xmm0
	psadbw	%xmm3, %xmm0
	packuswb	%xmm2, %xmm0
	paddd	%xmm0, %xmm4
	movdqa	%xmm6, %xmm0
	psrld	$1, %xmm0
	pand	%xmm8, %xmm0
	psubd	%xmm0, %xmm6
	movdqa	%xmm6, %xmm0
	pand	%xmm1, %xmm0
	psrld	$2, %xmm6
	pand	%xmm1, %xmm6
	paddd	%xmm0, %xmm6
	movdqa	%xmm6, %xmm0
	psrld	$4, %xmm0
	paddd	%xmm6, %xmm0
	pand	%xmm9, %xmm0
	movdqa	%xmm0, %xmm2
	punpckhdq	%xmm3, %xmm2
	psadbw	%xmm3, %xmm2
	punpckldq	%xmm3, %xmm0
	psadbw	%xmm3, %xmm0
	packuswb	%xmm2, %xmm0
	paddd	%xmm0, %xmm5
	addq	$32, %rax
	jne	LBB1_8
	paddd	%xmm4, %xmm5
	pshufd	$78, %xmm5, %xmm0
	paddd	%xmm5, %xmm0
	pshufd	$229, %xmm0, %xmm2
	paddd	%xmm0, %xmm2
	movd	%xmm2, (%rdi,%rcx,4)
	movq	%r9, %rcx
	orq	$4, %rcx
	movl	$0, (%rdi,%rcx,4)
	pxor	%xmm4, %xmm4
	movq	$-1024, %rax
	pxor	%xmm5, %xmm5
	.p2align	4, 0x90
LBB1_10:
	movdqu	1008(%rsi,%rax), %xmm0
	movdqu	1024(%rsi,%rax), %xmm2
	movdqu	5120(%rdx,%rax), %xmm7
	pand	%xmm0, %xmm7
	movdqu	5136(%rdx,%rax), %xmm6
	pand	%xmm2, %xmm6
	movdqa	%xmm7, %xmm0
	psrld	$1, %xmm0
	pand	%xmm8, %xmm0
	psubd	%xmm0, %xmm7
	movdqa	%xmm7, %xmm0
	pand	%xmm1, %xmm0
	psrld	$2, %xmm7
	pand	%xmm1, %xmm7
	paddd	%xmm0, %xmm7
	movdqa	%xmm7, %xmm0
	psrld	$4, %xmm0
	paddd	%xmm7, %xmm0
	pand	%xmm9, %xmm0
	movdqa	%xmm0, %xmm2
	punpckhdq	%xmm3, %xmm2
	psadbw	%xmm3, %xmm2
	punpckldq	%xmm3, %xmm0
	psadbw	%xmm3, %xmm0
	packuswb	%xmm2, %xmm0
	paddd	%xmm0, %xmm4
	movdqa	%xmm6, %xmm0
	psrld	$1, %xmm0
	pand	%xmm8, %xmm0
	psubd	%xmm0, %xmm6
	movdqa	%xmm6, %xmm0
	pand	%xmm1, %xmm0
	psrld	$2, %xmm6
	pand	%xmm1, %xmm6
	paddd	%xmm0, %xmm6
	movdqa	%xmm6, %xmm0
	psrld	$4, %xmm0
	paddd	%xmm6, %xmm0
	pand	%xmm9, %xmm0
	movdqa	%xmm0, %xmm2
	punpckhdq	%xmm3, %xmm2
	psadbw	%xmm3, %xmm2
	punpckldq	%xmm3, %xmm0
	psadbw	%xmm3, %xmm0
	packuswb	%xmm2, %xmm0
	paddd	%xmm0, %xmm5
	addq	$32, %rax
	jne	LBB1_10
	paddd	%xmm4, %xmm5
	pshufd	$78, %xmm5, %xmm0
	paddd	%xmm5, %xmm0
	pshufd	$229, %xmm0, %xmm2
	paddd	%xmm0, %xmm2
	movd	%xmm2, (%rdi,%rcx,4)
	movq	%r9, %rcx
	orq	$5, %rcx
	movl	$0, (%rdi,%rcx,4)
	pxor	%xmm4, %xmm4
	movq	$-1024, %rax
	pxor	%xmm5, %xmm5
	.p2align	4, 0x90
LBB1_12:
	movdqu	1008(%rsi,%rax), %xmm0
	movdqu	1024(%rsi,%rax), %xmm2
	movdqu	6144(%rdx,%rax), %xmm7
	pand	%xmm0, %xmm7
	movdqu	6160(%rdx,%rax), %xmm6
	pand	%xmm2, %xmm6
	movdqa	%xmm7, %xmm0
	psrld	$1, %xmm0
	pand	%xmm8, %xmm0
	psubd	%xmm0, %xmm7
	movdqa	%xmm7, %xmm0
	pand	%xmm1, %xmm0
	psrld	$2, %xmm7
	pand	%xmm1, %xmm7
	paddd	%xmm0, %xmm7
	movdqa	%xmm7, %xmm0
	psrld	$4, %xmm0
	paddd	%xmm7, %xmm0
	pand	%xmm9, %xmm0
	movdqa	%xmm0, %xmm2
	punpckhdq	%xmm3, %xmm2
	psadbw	%xmm3, %xmm2
	punpckldq	%xmm3, %xmm0
	psadbw	%xmm3, %xmm0
	packuswb	%xmm2, %xmm0
	paddd	%xmm0, %xmm4
	movdqa	%xmm6, %xmm0
	psrld	$1, %xmm0
	pand	%xmm8, %xmm0
	psubd	%xmm0, %xmm6
	movdqa	%xmm6, %xmm0
	pand	%xmm1, %xmm0
	psrld	$2, %xmm6
	pand	%xmm1, %xmm6
	paddd	%xmm0, %xmm6
	movdqa	%xmm6, %xmm0
	psrld	$4, %xmm0
	paddd	%xmm6, %xmm0
	pand	%xmm9, %xmm0
	movdqa	%xmm0, %xmm2
	punpckhdq	%xmm3, %xmm2
	psadbw	%xmm3, %xmm2
	punpckldq	%xmm3, %xmm0
	psadbw	%xmm3, %xmm0
	packuswb	%xmm2, %xmm0
	paddd	%xmm0, %xmm5
	addq	$32, %rax
	jne	LBB1_12
	paddd	%xmm4, %xmm5
	pshufd	$78, %xmm5, %xmm0
	paddd	%xmm5, %xmm0
	pshufd	$229, %xmm0, %xmm2
	paddd	%xmm0, %xmm2
	movd	%xmm2, (%rdi,%rcx,4)
	movq	%r9, %rcx
	orq	$6, %rcx
	movl	$0, (%rdi,%rcx,4)
	pxor	%xmm4, %xmm4
	movq	$-1024, %rax
	pxor	%xmm5, %xmm5
	.p2align	4, 0x90
LBB1_14:
	movdqu	1008(%rsi,%rax), %xmm0
	movdqu	1024(%rsi,%rax), %xmm2
	movdqu	7168(%rdx,%rax), %xmm7
	pand	%xmm0, %xmm7
	movdqu	7184(%rdx,%rax), %xmm6
	pand	%xmm2, %xmm6
	movdqa	%xmm7, %xmm0
	psrld	$1, %xmm0
	pand	%xmm8, %xmm0
	psubd	%xmm0, %xmm7
	movdqa	%xmm7, %xmm0
	pand	%xmm1, %xmm0
	psrld	$2, %xmm7
	pand	%xmm1, %xmm7
	paddd	%xmm0, %xmm7
	movdqa	%xmm7, %xmm0
	psrld	$4, %xmm0
	paddd	%xmm7, %xmm0
	pand	%xmm9, %xmm0
	movdqa	%xmm0, %xmm2
	punpckhdq	%xmm3, %xmm2
	psadbw	%xmm3, %xmm2
	punpckldq	%xmm3, %xmm0
	psadbw	%xmm3, %xmm0
	packuswb	%xmm2, %xmm0
	paddd	%xmm0, %xmm4
	movdqa	%xmm6, %xmm0
	psrld	$1, %xmm0
	pand	%xmm8, %xmm0
	psubd	%xmm0, %xmm6
	movdqa	%xmm6, %xmm0
	pand	%xmm1, %xmm0
	psrld	$2, %xmm6
	pand	%xmm1, %xmm6
	paddd	%xmm0, %xmm6
	movdqa	%xmm6, %xmm0
	psrld	$4, %xmm0
	paddd	%xmm6, %xmm0
	pand	%xmm9, %xmm0
	movdqa	%xmm0, %xmm2
	punpckhdq	%xmm3, %xmm2
	psadbw	%xmm3, %xmm2
	punpckldq	%xmm3, %xmm0
	psadbw	%xmm3, %xmm0
	packuswb	%xmm2, %xmm0
	paddd	%xmm0, %xmm5
	addq	$32, %rax
	jne	LBB1_14
	paddd	%xmm4, %xmm5
	pshufd	$78, %xmm5, %xmm0
	paddd	%xmm5, %xmm0
	pshufd	$229, %xmm0, %xmm2
	paddd	%xmm0, %xmm2
	movd	%xmm2, (%rdi,%rcx,4)
	orq	$7, %r9
	movl	$0, (%rdi,%r9,4)
	pxor	%xmm4, %xmm4
	movq	$-1024, %rax
	pxor	%xmm5, %xmm5
	.p2align	4, 0x90
LBB1_16:
	movdqu	1008(%rsi,%rax), %xmm0
	movdqu	1024(%rsi,%rax), %xmm2
	movdqu	8192(%rdx,%rax), %xmm7
	pand	%xmm0, %xmm7
	movdqu	8208(%rdx,%rax), %xmm6
	pand	%xmm2, %xmm6
	movdqa	%xmm7, %xmm0
	psrld	$1, %xmm0
	pand	%xmm8, %xmm0
	psubd	%xmm0, %xmm7
	movdqa	%xmm7, %xmm0
	pand	%xmm1, %xmm0
	psrld	$2, %xmm7
	pand	%xmm1, %xmm7
	paddd	%xmm0, %xmm7
	movdqa	%xmm7, %xmm0
	psrld	$4, %xmm0
	paddd	%xmm7, %xmm0
	pand	%xmm9, %xmm0
	movdqa	%xmm0, %xmm2
	punpckhdq	%xmm3, %xmm2
	psadbw	%xmm3, %xmm2
	punpckldq	%xmm3, %xmm0
	psadbw	%xmm3, %xmm0
	packuswb	%xmm2, %xmm0
	paddd	%xmm0, %xmm4
	movdqa	%xmm6, %xmm0
	psrld	$1, %xmm0
	pand	%xmm8, %xmm0
	psubd	%xmm0, %xmm6
	movdqa	%xmm6, %xmm0
	pand	%xmm1, %xmm0
	psrld	$2, %xmm6
	pand	%xmm1, %xmm6
	paddd	%xmm0, %xmm6
	movdqa	%xmm6, %xmm0
	psrld	$4, %xmm0
	paddd	%xmm6, %xmm0
	pand	%xmm9, %xmm0
	movdqa	%xmm0, %xmm2
	punpckhdq	%xmm3, %xmm2
	psadbw	%xmm3, %xmm2
	punpckldq	%xmm3, %xmm0
	psadbw	%xmm3, %xmm0
	packuswb	%xmm2, %xmm0
	paddd	%xmm0, %xmm5
	addq	$32, %rax
	jne	LBB1_16
	paddd	%xmm4, %xmm5
	pshufd	$78, %xmm5, %xmm0
	paddd	%xmm5, %xmm0
	pshufd	$229, %xmm0, %xmm2
	paddd	%xmm0, %xmm2
	movd	%xmm2, (%rdi,%r9,4)
	incq	%r8
	addq	$1024, %rsi
	cmpq	$8, %r8
	jne	LBB1_1
	retq

	.section	__DATA,__data
	.globl	___TVMAPISetLastError
	.weak_definition	___TVMAPISetLastError
	.p2align	3
___TVMAPISetLastError:
	.quad	0

	.section	__TEXT,__const
l_.str:
	.asciz	"Assert fail: (num_args == 3), default_function: num_args should be 3"

l_.str.1:
	.asciz	"Assert fail: ((1 == int32(arg0.strides[1])) && (256 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array"

l_.str.2:
	.asciz	"Assert fail: ((1 == int32(arg1.strides[1])) && (256 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array"

l_.str.3:
	.asciz	"Assert fail: ((1 == int32(arg2.strides[1])) && (8 == int32(arg2.strides[0]))), arg2.strides: expected to be compact array"

l_.str.4:
	.asciz	"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), default_function: Expect arg[0] to be pointer"

l_.str.5:
	.asciz	"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), default_function: Expect arg[1] to be pointer"

l_.str.6:
	.asciz	"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), default_function: Expect arg[2] to be pointer"

l_.str.7:
	.asciz	"Assert fail: (dev_type == 1), device_type need to be 1"

l_.str.8:
	.asciz	"Assert fail: (2 == tvm_struct_get(arg0, 0, 4)), arg0.ndim is expected to equal 2"

l_.str.9:
	.asciz	"Assert fail: (((tvm_struct_get(arg0, 0, 5) == (uint8)1) && (tvm_struct_get(arg0, 0, 6) == (uint8)32)) && (tvm_struct_get(arg0, 0, 7) == (uint16)1)), arg0.dtype is expected to be uint32"

l_.str.10:
	.asciz	"Assert fail: (int32(arg0.shape[0]) == 8), Argument arg0.shape[0] has an unsatisfied constraint"

l_.str.11:
	.asciz	"Assert fail: (int32(arg0.shape[1]) == 256), Argument arg0.shape[1] has an unsatisfied constraint"

l_.str.12:
	.asciz	"Assert fail: (tvm_struct_get(arg0, 0, 8) == (uint64)0), Argument arg0.byte_offset has an unsatisfied constraint"

l_.str.13:
	.asciz	"Assert fail: (2 == tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 2"

l_.str.14:
	.asciz	"Assert fail: (((tvm_struct_get(arg1, 0, 5) == (uint8)1) && (tvm_struct_get(arg1, 0, 6) == (uint8)32)) && (tvm_struct_get(arg1, 0, 7) == (uint16)1)), arg1.dtype is expected to be uint32"

l_.str.15:
	.asciz	"Assert fail: (int32(arg1.shape[0]) == 8), Argument arg1.shape[0] has an unsatisfied constraint"

l_.str.16:
	.asciz	"Assert fail: (int32(arg1.shape[1]) == 256), Argument arg1.shape[1] has an unsatisfied constraint"

l_.str.17:
	.asciz	"Assert fail: (tvm_struct_get(arg1, 0, 8) == (uint64)0), Argument arg1.byte_offset has an unsatisfied constraint"

l_.str.18:
	.asciz	"Assert fail: (1 == tvm_struct_get(arg1, 0, 10)), Argument arg1.device_type has an unsatisfied constraint"

l_.str.19:
	.asciz	"Assert fail: (dev_id == tvm_struct_get(arg1, 0, 9)), Argument arg1.device_id has an unsatisfied constraint"

l_.str.20:
	.asciz	"Assert fail: (2 == tvm_struct_get(arg2, 0, 4)), arg2.ndim is expected to equal 2"

l_.str.21:
	.asciz	"Assert fail: (((tvm_struct_get(arg2, 0, 5) == (uint8)1) && (tvm_struct_get(arg2, 0, 6) == (uint8)32)) && (tvm_struct_get(arg2, 0, 7) == (uint16)1)), arg2.dtype is expected to be uint32"

l_.str.22:
	.asciz	"Assert fail: (int32(arg2.shape[0]) == 8), Argument arg2.shape[0] has an unsatisfied constraint"

l_.str.23:
	.asciz	"Assert fail: (int32(arg2.shape[1]) == 8), Argument arg2.shape[1] has an unsatisfied constraint"

l_.str.24:
	.asciz	"Assert fail: (tvm_struct_get(arg2, 0, 8) == (uint64)0), Argument arg2.byte_offset has an unsatisfied constraint"

l_.str.25:
	.asciz	"Assert fail: (1 == tvm_struct_get(arg2, 0, 10)), Argument arg2.device_type has an unsatisfied constraint"

l_.str.26:
	.asciz	"Assert fail: (dev_id == tvm_struct_get(arg2, 0, 9)), Argument arg2.device_id has an unsatisfied constraint"

	.globl	___tvm_main__
	.weak_definition	___tvm_main__
___tvm_main__:
	.asciz	"default_function"


.subsections_via_symbols
