	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	jmp	_then6293
	.text
_else6292:
	movq	$4, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge6291:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then6293:
	movq	$9, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	