	.data
	.globl	s
s:
	.quad	_str6227
	.data
	.globl	_str6227
_str6227:
	.asciz	"hello!"
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$17, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	