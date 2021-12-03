	.text
	.globl	one_iteration
one_iteration:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rdx
	movq	%rdx, %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, %rsi
	xorq	%rsi, %rdx
	movq	%rsi, %rax
	movq	$2, %rcx
	shlq	%cl, %rax
	movq	%rax, %rdi
	movq	%rdx, %rsi
	xorq	%rdi, %rsi
	movq	%rdi, %rax
	movq	$1, %rcx
	shlq	%cl, %rax
	movq	%rax, %rdx
	xorq	%rdx, %rsi
	movq	%rsi, %rax
	movq	$63, %rcx
	shrq	%cl, %rax
	movq	%rax, %rdx
	andq	$1, %rdx
	orq	%rsi, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	$1, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	jmp	loop
	.text
end:
	movq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
loop:
	movq	(%r8 ), %rdx
	movq	%rdx, %rdi
	addq	$1, %rdi
	movq	%rdi, (%r8 )
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	one_iteration
	popq	%rdx
	popq	%rdi
	popq	%r8 
	movq	%rax, %rsi
	cmpq	$5, %rdi
	sete	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	end
	jmp	loop