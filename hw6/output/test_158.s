	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	jmp	_then6323
	.text
_else6322:
	movq	$2, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge6321:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then6323:
	movq	$-96, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	