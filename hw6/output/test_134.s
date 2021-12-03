	.data
	.globl	_str_arr5295
_str_arr5295:
	.asciz	"ab"
	.text
	.globl	run2
run2:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rdx
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, %r8 
	movq	%rdx, (%rdi)
	movq	%rsi, (%r8 )
	movq	(%rdi), %rdx
	movq	(%r8 ), %rsi
	pushq	%r15
	movq	%rdx, %r15
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	callq	*%r15
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r15
	movq	(%rdi), %rdx
	movq	(%r8 ), %rsi
	pushq	%r15
	movq	%rdx, %r15
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	callq	*%r15
	popq	%rdx
	popq	%rsi
	popq	%r15
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	_str_arr5295(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	pushq	%rdx
	movq	%rdx, %rsi
	leaq	print_string(%rip), %rdi
	callq	run2
	popq	%rdx
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	