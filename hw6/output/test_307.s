	.text
	.globl	call
call:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rsi, (%rdx)
	movq	%rdi, (%r8 )
	movq	(%rdx), %rdx
	movq	(%r8 ), %rsi
	pushq	%r15
	movq	%rdx, %r15
	pushq	%rsi
	movq	%rsi, %rdi
	callq	*%r15
	popq	%rsi
	popq	%r15
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	inc
inc:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rsi, (%rdx)
	movq	(%rdx), %rdx
	addq	$1, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$3, %rsi
	leaq	inc(%rip), %rdi
	callq	call
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	