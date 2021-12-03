	.data
	.globl	y
y:
	.quad	1
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	y(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	cmpq	$0, %rdx
	jne	_then6207
	jmp	_else6206
	.text
_else6206:
	jmp	_merge6205
	.text
_merge6205:
	movq	$15, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then6207:
	movq	$17, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	