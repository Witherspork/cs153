	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	%rdx, (%r8 )
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%r8 ), %rdx
	cmpq	$0, %rdx
	sete	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_then2458
	jmp	_else2457
	.text
_else2457:
	movq	(%r8 ), %rdi
	movq	(%r8 ), %rdx
	subq	$1, %rdx
	pushq	%rdi
	pushq	%rsi
	movq	%rdx, %rdi
	callq	f
	popq	%rsi
	popq	%rdi
	movq	%rax, %rdx
	imulq	%rdi, %rdx
	movq	%rdx, (%rsi)
	jmp	_merge2456
	.text
_merge2456:
	movq	(%rsi), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then2458:
	movq	$1, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	_merge2456
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$5, %rdi
	callq	f
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	