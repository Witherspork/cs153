	.text
	.globl	create_pair
create_pair:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rsi, (%rdi)
	movq	%rdx, (%r8 )
	pushq	%r8 
	pushq	%rdi
	movq	$16, %rdi
	callq	oat_malloc
	popq	%rdi
	popq	%r8 
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %r9 
	movq	(%rdi), %rsi
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	%rsi, (%rdx)
	movq	(%r8 ), %rsi
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rdx
	movq	%rsi, (%rdx)
	movq	%r9 , %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdi
	pushq	%rdi
	movq	$0, %rsi
	movq	$1, %rdi
	callq	create_pair
	popq	%rdi
	movq	%rax, %rdx
	movq	%rdx, (%rdi)
	movq	(%rdi), %rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rsi
	movq	(%rdi), %rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	andq	%rsi, %rdx
	cmpq	$0, %rdx
	jne	_then4896
	jmp	_else4895
	.text
_else4895:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge4894:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4896:
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	