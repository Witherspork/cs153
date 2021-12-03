	.data
	.globl	c
c:
	.quad	_global_struct5260
	.data
	.globl	_global_struct5260
_global_struct5260:
	.quad	10
	.quad	20
	.quad	30
	.quad	rot
	.text
	.globl	rot
rot:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	%rdx, (%r8 )
	pushq	%r8 
	pushq	%rsi
	movq	$32, %rdi
	callq	oat_malloc
	popq	%rsi
	popq	%r8 
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdi
	movq	(%r8 ), %rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %r9 
	movq	%rdx, (%r9 )
	movq	(%r8 ), %rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %r9 
	movq	%rdx, (%r9 )
	movq	(%r8 ), %rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %r9 
	movq	%rdx, (%r9 )
	movq	(%r8 ), %rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	%rdi, %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, %r8 
	movq	%rdx, (%r8 )
	movq	%rdi, (%rsi)
	movq	(%rsi), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	c(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	leaq	c(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	pushq	%r15
	movq	%rdx, %r15
	pushq	%rsi
	movq	%rsi, %rdi
	callq	*%r15
	popq	%rsi
	popq	%r15
	movq	%rax, %rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	