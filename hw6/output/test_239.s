	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	jmp	_cond15
	.text
_body14:
	movq	(%rsi), %rdx
	movq	(%rdi), %r8 
	addq	%rdx, %r8 
	movq	(%rdi), %rdx
	imulq	%r8 , %rdx
	movq	%rdx, (%rsi)
	movq	(%rdi), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rdi)
	jmp	_cond15
	.text
_cond15:
	movq	(%rdi), %rdx
	cmpq	$10, %rdx
	setl	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_body14
	jmp	_post13
	.text
_post13:
	movq	(%rsi), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	