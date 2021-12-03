	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$8, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	$10, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	gcd
	.text
continue_loop:
	movq	(%rdi), %r8 
	cmpq	%r9 , %r8 
	setg	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	if
	jmp	else
	.text
else:
	movq	%r9 , %rdx
	subq	%r8 , %rdx
	movq	%rdx, (%rsi)
	jmp	loop
	.text
gcd:
	movq	(%rdi), %rdx
	movq	$0, %rax
	cmpq	%rdx, %rax
	sete	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	ret_b
	jmp	loop
	.text
if:
	movq	%r8 , %rdx
	subq	%r9 , %rdx
	movq	%rdx, (%rdi)
	jmp	loop
	.text
loop:
	movq	(%rsi), %r9 
	movq	$0, %rax
	cmpq	%r9 , %rax
	sete	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	ret_a
	jmp	continue_loop
	.text
ret_a:
	movq	(%rdi), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
ret_b:
	movq	(%rsi), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	