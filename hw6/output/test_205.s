	.text
	.globl	bar
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, %r11
	movq	%rdx, %r10
	movq	%r9 , %rdi
	movq	16(%rbp), %rsi
	movq	24(%rbp), %rdx
	movq	%rcx, %r9 
	addq	-16(%rbp), %r11
	addq	%r11, %r10
	addq	%r10, %r9 
	addq	%r9 , %r8 
	addq	%r8 , %rdi
	addq	%rdi, %rsi
	addq	%rsi, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	foo
foo:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rdx
	pushq	%rdx
	pushq	%rdx
	movq	%rdx, %r9 
	movq	%rdx, %r8 
	movq	%rdx, %rcx
	movq	%rdx, %rsi
	movq	%rdx, %rdi
	callq	bar
	addq	$16, %rsp
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$3, %rdi
	callq	foo
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	