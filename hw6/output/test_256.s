	.text
	.globl	fact
fact:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	%rdx, (%rsi)
	movq	$1, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	jmp	_cond576
	.text
_body575:
	movq	(%rdi), %r8 
	movq	(%rsi), %rdx
	imulq	%r8 , %rdx
	movq	%rdx, (%rdi)
	movq	(%rsi), %rdx
	subq	$1, %rdx
	movq	%rdx, (%rsi)
	jmp	_cond576
	.text
_cond576:
	movq	(%rsi), %rdx
	cmpq	$0, %rdx
	setg	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_body575
	jmp	_post574
	.text
_post574:
	movq	(%rdi), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$5, %rdi
	callq	fact
	movq	%rax, %rdx
	movq	%rdx, %rdi
	callq	string_of_int
	movq	%rax, %rdx
	pushq	%rdx
	movq	%rdx, %rdi
	callq	print_string
	popq	%rdx
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	