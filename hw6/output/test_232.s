	.text
	.globl	naive_mod
naive_mod:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rsi, %r8 
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	start
	.text
final:
	movq	(%rsi), %rdx
	subq	%r8 , %rdx
	movq	%rdi, %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
start:
	movq	(%rsi), %rdx
	addq	%r8 , %rdx
	movq	%rdx, (%rsi)
	cmpq	%rdi, %rdx
	setg	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	final
	jmp	start
	.text
	.globl	naive_prime
naive_prime:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	$2, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	jmp	loop
	.text
final_false:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
final_true:
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
inc:
	movq	(%rdi), %r8 
	movq	$1, %rdx
	addq	%r9 , %rdx
	movq	%rdx, (%rdi)
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	%rsi, %rdi
	movq	%r8 , %rsi
	callq	naive_mod
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%rax, %rdx
	movq	$0, %rax
	cmpq	%rdx, %rax
	sete	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	final_false
	jmp	loop
	.text
loop:
	movq	(%rdi), %r9 
	movq	%r9 , %rdx
	imulq	%r9 , %rdx
	cmpq	%rsi, %rdx
	setg	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	final_true
	jmp	inc
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$100, %rdi
	callq	naive_prime
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	