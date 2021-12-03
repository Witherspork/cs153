	.text
	.globl	factorial
factorial:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	cmpq	$0, %rsi
	sete	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	ret1
	jmp	recurse
	.text
recurse:
	movq	%rsi, %rdx
	subq	$1, %rdx
	pushq	%rsi
	movq	%rdx, %rdi
	callq	factorial
	popq	%rsi
	movq	%rax, %rdx
	imulq	%rsi, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
ret1:
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$5, %rdi
	callq	factorial
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	