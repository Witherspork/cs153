	.data
	.globl	i
i:
	.quad	0
	.text
	.globl	f
f:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rsi, %rdx
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	%rdi, (%r9 )
	movq	%rdx, (%r8 )
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%r9 ), %rdx
	cmpq	$1, %rdx
	setge	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_then713
	jmp	_else712
	.text
_else712:
	movq	(%r9 ), %rdi
	movq	(%r8 ), %rdx
	addq	%rdi, %rdx
	movq	%rdx, (%rsi)
	jmp	_merge711
	.text
_merge711:
	movq	(%rsi), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then713:
	movq	(%r8 ), %rdi
	movq	(%r9 ), %rdx
	subq	$1, %rdx
	pushq	%rdi
	pushq	%rsi
	movq	%rdi, %rsi
	movq	%rdx, %rdi
	callq	f
	popq	%rsi
	popq	%rdi
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, (%rsi)
	jmp	_merge711
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	$3, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	$3, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %rdx
	movq	(%rsi), %rsi
	pushq	%rsi
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	f
	popq	%rsi
	movq	%rax, %rdx
	leaq	i(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	addq	%rsi, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	