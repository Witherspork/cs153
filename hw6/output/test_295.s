	.text
	.globl	gcd
gcd:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %r9 
	movq	%rsi, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	%r9 , (%r8 )
	movq	%rdx, (%rdi)
	jmp	_cond4365
	.text
_body4364:
	movq	(%rdi), %rdx
	movq	%rdx, (%rsi)
	movq	(%rdi), %rdx
	movq	(%r8 ), %r9 
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	%rdx, %rsi
	movq	%r9 , %rdi
	callq	mod
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rax, %rdx
	movq	%rdx, (%rdi)
	movq	(%rsi), %rdx
	movq	%rdx, (%r8 )
	jmp	_cond4365
	.text
_cond4365:
	movq	(%rdi), %rdx
	cmpq	$0, %rdx
	setne	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_body4364
	jmp	_post4363
	.text
_post4363:
	movq	(%r8 ), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	mod
mod:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %r9 
	movq	%rsi, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	%r9 , (%r8 )
	movq	%rdx, (%rdi)
	movq	(%r8 ), %rdx
	movq	%rdx, (%rsi)
	jmp	_cond4349
	.text
_body4348:
	movq	(%rsi), %rdx
	movq	(%rdi), %r8 
	subq	%r8 , %rdx
	movq	%rdx, (%rsi)
	jmp	_cond4349
	.text
_cond4349:
	movq	(%rsi), %rdx
	movq	(%rdi), %r8 
	subq	%r8 , %rdx
	cmpq	$0, %rdx
	setge	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_body4348
	jmp	_post4347
	.text
_post4347:
	movq	(%rsi), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	$64, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	$48, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %rdx
	movq	(%rsi), %rsi
	pushq	%rsi
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	gcd
	popq	%rsi
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	