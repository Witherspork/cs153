	.data
	.globl	x
x:
	.quad	add
	.text
	.globl	add
add:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rsi, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%rsi)
	movq	%rdx, (%r8 )
	movq	(%rsi), %rsi
	movq	(%r8 ), %rdx
	addq	%rsi, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	x(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	pushq	%r15
	movq	%rdx, %r15
	movq	$4, %rsi
	movq	$3, %rdi
	callq	*%r15
	popq	%r15
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	