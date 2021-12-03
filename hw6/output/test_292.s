	.text
	.globl	fibR
fibR:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	%rdx, (%rsi)
	movq	(%rsi), %rdx
	cmpq	$0, %rdx
	sete	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_then4026
	jmp	_else4025
	.text
_else4025:
	jmp	_merge4024
	.text
_else4030:
	jmp	_merge4029
	.text
_merge4024:
	movq	(%rsi), %rdx
	cmpq	$1, %rdx
	sete	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_then4031
	jmp	_else4030
	.text
_merge4029:
	movq	(%rsi), %rdx
	subq	$1, %rdx
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	fibR
	popq	%rdx
	popq	%rsi
	movq	%rax, %rdi
	movq	(%rsi), %rdx
	subq	$2, %rdx
	pushq	%rdi
	movq	%rdx, %rdi
	callq	fibR
	popq	%rdi
	movq	%rax, %rdx
	addq	%rdi, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4026:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then4031:
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	fibI
fibI:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rdx
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	%rdx, (%rdi)
	movq	$0, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	movq	$1, %rax
	movq	%r8 , %rcx
	movq	%rax, (%rcx)
	movq	(%rdi), %rdx
	cmpq	$0, %rdx
	sete	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_then3991
	jmp	_else3990
	.text
_body4002:
	movq	(%r8 ), %rdx
	movq	%rdx, (%rsi)
	movq	(%r8 ), %rdx
	movq	(%r9 ), %r10
	addq	%r10, %rdx
	movq	%rdx, (%r8 )
	movq	(%rsi), %rdx
	movq	%rdx, (%r9 )
	movq	(%rdi), %rdx
	subq	$1, %rdx
	movq	%rdx, (%rdi)
	jmp	_cond4003
	.text
_cond4003:
	movq	(%rdi), %rdx
	subq	$2, %rdx
	cmpq	$0, %rdx
	setg	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_body4002
	jmp	_post4001
	.text
_else3990:
	jmp	_merge3989
	.text
_else3996:
	jmp	_merge3995
	.text
_merge3989:
	movq	(%rdi), %rdx
	cmpq	$1, %rdx
	sete	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_then3997
	jmp	_else3996
	.text
_merge3995:
	jmp	_cond4003
	.text
_post4001:
	movq	(%r9 ), %rsi
	movq	(%r8 ), %rdx
	addq	%rsi, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then3991:
	movq	(%r9 ), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then3997:
	movq	(%r8 ), %rdx
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
	movq	%rsp, %rdi
	movq	$1, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	pushq	%rdi
	movq	$12, %rdi
	callq	fibR
	popq	%rdi
	movq	%rax, %rdx
	cmpq	$144, %rdx
	sete	%sil
	andq	$1, %rsi
	pushq	%rdi
	pushq	%rsi
	movq	$12, %rdi
	callq	fibI
	popq	%rsi
	popq	%rdi
	movq	%rax, %rdx
	cmpq	$144, %rdx
	sete	%dl
	andq	$1, %rdx
	andq	%rsi, %rdx
	cmpq	$0, %rdx
	jne	_then3977
	jmp	_else3976
	.text
_else3976:
	jmp	_merge3975
	.text
_merge3975:
	movq	(%rdi), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then3977:
	movq	$0, %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	jmp	_merge3975