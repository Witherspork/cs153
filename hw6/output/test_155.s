	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	$12, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	$800, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	(%r8 ), %rsi
	movq	(%rdi), %rdx
	movq	%rsi, %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	cmpq	$0, %rdx
	setle	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_then6276
	jmp	_else6275
	.text
_else6275:
	movq	(%r8 ), %rsi
	movq	(%rdi), %rdx
	movq	%rsi, %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge6274:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then6276:
	movq	(%r8 ), %rdx
	movq	$0, %rsi
	subq	%rdx, %rsi
	movq	(%rdi), %rdx
	movq	%rsi, %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	