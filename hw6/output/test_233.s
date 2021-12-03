	.text
	.globl	gcd_rec
gcd_rec:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rdi
	movq	%rsi, %rdi
	popq	%rsi
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rsi, (%r8 )
	cmpq	$0, %rdi
	setne	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	neq0
	jmp	eq0
	.text
eq0:
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
neq0:
	movq	(%r8 ), %rdx
	movq	%rdx, %rsi
	subq	%rdi, %rsi
	movq	%rsi, (%r8 )
	cmpq	%rdi, %rsi
	setg	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	neq0
	jmp	recurse
	.text
recurse:
	pushq	%rdi
	pushq	%rsi
	callq	gcd_rec
	popq	%rsi
	popq	%rdi
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
	movq	$34, %rsi
	movq	$424, %rdi
	callq	gcd_rec
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	