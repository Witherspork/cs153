	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	jmp	_then6306
	.text
_else6305:
	movq	$46, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge6304:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then6306:
	movq	$23, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	