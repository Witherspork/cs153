	.text
	.globl	main
main:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$14, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	