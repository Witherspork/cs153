	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %rsi
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%rdx), %rdx
	cmpq	$0, %rdx
	sete	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_null6663
	jmp	_notnull6662
	.text
_merge6661:
	movq	(%rsi), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_notnull6662:
	movq	$4, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	_merge6661
	.text
_null6663:
	movq	$5, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	jmp	_merge6661