	.text
	.globl	f1
f1:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rsi, (%rdx)
	movq	(%rdx), %rdx
	movq	%rdx, %rdi
	callq	f2
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	f2
f2:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rsi, (%rdx)
	movq	(%rdx), %rdx
	movq	%rdx, %rdi
	callq	f3
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	f3
f3:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rsi, (%rdx)
	movq	(%rdx), %rdx
	movq	%rdx, %rdi
	callq	f4
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	f4
f4:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rsi, (%rdx)
	movq	(%rdx), %rdx
	movq	%rdx, %rdi
	callq	f5
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	f5
f5:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rsi, (%rdx)
	movq	(%rdx), %rdx
	movq	%rdx, %rdi
	callq	f6
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	f6
f6:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rsi, (%rdx)
	movq	(%rdx), %rdx
	movq	%rdx, %rdi
	callq	f7
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	f7
f7:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rsi, (%rdx)
	movq	(%rdx), %rdx
	movq	%rdx, %rdi
	callq	f8
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	f8
f8:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rsi, (%rdx)
	movq	(%rdx), %rdx
	movq	%rdx, %rdi
	callq	f9
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	f9
f9:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rsi, (%rdx)
	movq	(%rdx), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rsi, (%rdx)
	movq	(%rdx), %rdx
	movq	%rdx, %rdi
	callq	f1
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	