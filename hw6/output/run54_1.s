	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$56, %rsp
	movq	%rcx, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r11
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, -24(%rbp)
	subq	$8, %rsp
	movq	%rsp, -32(%rbp)
	subq	$8, %rsp
	movq	%rsp, -40(%rbp)
	subq	$8, %rsp
	movq	%rsp, -48(%rbp)
	subq	$8, %rsp
	movq	%rsp, -56(%rbp)
	movq	%rdi, (%r10)
	movq	%rsi, (%r11)
	movq	%rdx, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r8 , %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r9 , %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	16(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	24(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%r10), %rdx
	movq	(%r11), %rsi
	movq	%rdx, %rdi
	addq	%rsi, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rdi, %rsi
	addq	%rdx, %rsi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	%rsi, %rdi
	addq	%rdx, %rdi
	movq	%rdi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdi, (%rdx)
	movq	%rsi, (%r8 )
	movq	$0, %rdx
	subq	$3, %rdx
	movq	$0, %rsi
	subq	$4, %rsi
	movq	$0, %rdi
	subq	$5, %rdi
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rdx
	pushq	%rsi
	movq	%rdi, %r9 
	movq	$5, %r8 
	movq	$4, %rcx
	movq	$3, %rdx
	movq	$2, %rsi
	movq	$1, %rdi
	callq	f
	addq	$16, %rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax, %r8 
	movq	%r8 , %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	