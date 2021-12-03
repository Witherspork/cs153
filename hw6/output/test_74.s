	.data
	.globl	s
s:
	.quad	_str557
	.data
	.globl	_str557
_str557:
	.asciz	"compilers"
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	s(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	pushq	%rdx
	movq	%rdx, %rdi
	callq	print_string
	popq	%rdx
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	