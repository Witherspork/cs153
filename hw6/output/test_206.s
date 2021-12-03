	.text
	.globl	baz
baz:
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
	.globl	bar
bar:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, %r11
	movq	%r8 , -16(%rbp)
	movq	%r9 , %r10
	movq	%rsi, %rdi
	movq	16(%rbp), %r9 
	movq	24(%rbp), %r8 
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	addq	%r11, %rdi
	addq	%rdi, %rsi
	movq	%rsi, %r11
	addq	%rdx, %r11
	movq	%r11, %rdx
	addq	-16(%rbp), %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	pushq	%r8 
	pushq	%r9 
	movq	%r10, %r9 
	movq	-16(%rbp), %r8 
	movq	%rdx, %rcx
	movq	%r11, %rdx
	callq	baz
	addq	$16, %rsp
	popq	%rdx
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%rax, %rsi
	addq	%r10, %rdx
	addq	%r9 , %rdx
	addq	%r8 , %rdx
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
	movq	$1, %rdi
	callq	foo
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	