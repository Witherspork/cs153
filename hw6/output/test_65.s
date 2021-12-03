	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	$9, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	(%r9 ), %rsi
	movq	(%r9 ), %rdx
	addq	%rsi, %rdx
	movq	%rdx, (%rdi)
	movq	(%r9 ), %r8 
	movq	(%r9 ), %rsi
	movq	(%r9 ), %rdx
	imulq	%rsi, %rdx
	movq	%r8 , %rsi
	addq	%rdx, %rsi
	movq	(%rdi), %rdx
	movq	%rsi, %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	$2, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	$2, %rcx
	shlq	%cl, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	$2, %rcx
	sarq	%cl, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	