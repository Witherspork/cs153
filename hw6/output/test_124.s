	.data
	.globl	_str_arr4993
_str_arr4993:
	.asciz	"hello"
	.text
	.globl	neg
neg:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdx
	movq	%rsi, (%rdx)
	movq	(%rdx), %rdx
	movq	$0, %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
	.globl	program
program:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %r8 
	pushq	%r10
	pushq	%r8 
	movq	$48, %rdi
	callq	oat_malloc
	popq	%r8 
	popq	%r10
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rsi
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	$3, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rdx
	movq	$1, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	leaq	_str_arr4993(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %rdi
	movq	%rdx, (%rdi)
	pushq	%r10
	pushq	%r8 
	pushq	%rsi
	movq	$3, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%r8 
	popq	%r10
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, -8(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r11
	movq	$3, %rax
	movq	%r11, %rcx
	movq	%rax, (%rcx)
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, %rcx
	movq	%rax, (%rcx)
	movq	$0, %rax
	movq	%r10, %rcx
	movq	%rax, (%rcx)
	jmp	_cond5008
	.text
_body5007:
	movq	%rdi, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	(%r10), %r9 
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r9 , %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	-16(%rbp), %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r9 , %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	(%r10), %rdx
	addq	$1, %rdx
	movq	%rdx, (%r10)
	jmp	_cond5008
	.text
_cond5008:
	movq	(%r10), %rdx
	movq	(%r11), %r9 
	cmpq	%r9 , %rdx
	setl	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_body5007
	jmp	_post5006
	.text
_else5046:
	movq	(%r8 ), %rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge5045:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post5006:
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$24, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$32, %rax
	movq	%rax, %rdx
	movq	$0, %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%rsi, %rax
	addq	$0, %rax
	addq	$40, %rax
	movq	%rax, %rdx
	leaq	neg(%rip), %rax
	movq	%rdx, %rcx
	movq	%rax, (%rcx)
	movq	%rsi, (%r8 )
	movq	(%r8 ), %rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$16, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	pushq	%r8 
	pushq	%rdx
	movq	%rdx, %rdi
	callq	print_string
	popq	%rdx
	popq	%r8 
	movq	(%r8 ), %rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	cmpq	$0, %rdx
	jne	_then5047
	jmp	_else5046
	.text
_then5047:
	movq	(%r8 ), %rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$40, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rsi
	movq	(%r8 ), %rdx
	movq	%rdx, %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rdx
	pushq	%r15
	movq	%rsi, %r15
	pushq	%rsi
	movq	%rdx, %rdi
	callq	*%r15
	popq	%rsi
	popq	%r15
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	