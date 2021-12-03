	.data
	.globl	_str_arr3619
_str_arr3619:
	.asciz	"Correct!"
	.text
	.globl	euclid_division
euclid_division:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rdx
	movq	%rsi, %r10
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rsi
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	%rdx, (%r9 )
	movq	%r10, (%r8 )
	movq	(%r8 ), %rdx
	cmpq	$0, %rdx
	setl	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_then3698
	jmp	_else3697
	.text
_body3713:
	movq	(%rsi), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rsi)
	movq	(%rdi), %rdx
	movq	(%r8 ), %r9 
	subq	%r9 , %rdx
	movq	%rdx, (%rdi)
	jmp	_cond3714
	.text
_body3739:
	movq	(%rsi), %rdx
	addq	$1, %rdx
	movq	%rdx, (%rsi)
	movq	(%rdi), %rdx
	movq	(%r8 ), %r9 
	subq	%r9 , %rdx
	movq	%rdx, (%rdi)
	jmp	_cond3740
	.text
_cond3714:
	movq	(%rdi), %rdx
	movq	(%r8 ), %r9 
	cmpq	%r9 , %rdx
	setge	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_body3713
	jmp	_post3712
	.text
_cond3740:
	movq	(%rdi), %rdx
	movq	(%r8 ), %r9 
	cmpq	%r9 , %rdx
	setge	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_body3739
	jmp	_post3738
	.text
_else3697:
	jmp	_merge3696
	.text
_else3730:
	movq	(%rsi), %rdx
	movq	$0, %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	subq	$1, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_else3733:
	jmp	_merge3732
	.text
_merge3696:
	movq	$0, %rax
	movq	%rsi, %rcx
	movq	%rax, (%rcx)
	movq	(%r9 ), %rdx
	movq	%rdx, (%rdi)
	movq	(%r9 ), %rdx
	cmpq	$0, %rdx
	setl	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_then3734
	jmp	_else3733
	.text
_merge3729:
	jmp	_merge3732
	.text
_merge3732:
	jmp	_cond3740
	.text
_post3712:
	movq	(%rdi), %rdx
	cmpq	$0, %rdx
	sete	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_then3731
	jmp	_else3730
	.text
_post3738:
	movq	(%rsi), %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then3698:
	movq	(%r8 ), %rdx
	movq	$0, %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	movq	(%r9 ), %rsi
	pushq	%rsi
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	euclid_division
	popq	%rsi
	movq	%rax, %rdx
	movq	$0, %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then3731:
	movq	(%rsi), %rdx
	movq	$0, %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then3734:
	movq	(%r9 ), %rdx
	movq	$0, %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	movq	%rdx, (%rdi)
	jmp	_cond3714
	.text
	.globl	binary_search
binary_search:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$24, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, %r11
	movq	%rcx, %r9 
	movq	%rdx, %rsi
	subq	$8, %rsp
	movq	%rsp, -16(%rbp)
	subq	$8, %rsp
	movq	%rsp, %r10
	subq	$8, %rsp
	movq	%rsp, %rdx
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %rdi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	%r11, (%r10)
	movq	%rsi, (%rdx)
	movq	%r9 , (%r8 )
	movq	(%r8 ), %r9 
	movq	(%rdx), %rsi
	cmpq	%rsi, %r9 
	setl	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then3642
	jmp	_else3641
	.text
_else3641:
	jmp	_merge3640
	.text
_else3664:
	jmp	_merge3663
	.text
_else3681:
	movq	$1, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_merge3640:
	movq	(%r8 ), %r9 
	movq	(%rdx), %rsi
	addq	%r9 , %rsi
	pushq	%r10
	pushq	%r8 
	pushq	%rdi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	$2, %rsi
	callq	euclid_division
	popq	%rdx
	popq	%rdi
	popq	%r8 
	popq	%r10
	movq	%rax, %rsi
	movq	%rsi, (%rdi)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r11
	movq	(%rdi), %r9 
	movq	%r11, %rax
	movq	%rax, %rsi
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rsi, %rdi
	movq	%r9 , %rsi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r11, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r9 , %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movq	(%rsi), %r9 
	movq	(%r10), %rsi
	cmpq	%rsi, %r9 
	setg	%sil
	andq	$1, %rsi
	cmpq	$0, %rsi
	jne	_then3665
	jmp	_else3664
	.text
_merge3663:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %r9 
	movq	(%rdi), %rsi
	movq	%r9 , %rax
	movq	%rax, %rdx
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	movq	%r9 , %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%rsi, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %rdx
	movq	(%rdx), %rsi
	movq	(%r10), %rdx
	cmpq	%rdx, %rsi
	setl	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_then3682
	jmp	_else3681
	.text
_merge3680:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then3642:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then3665:
	movq	(%rdi), %rsi
	movq	%rsi, %r8 
	subq	$1, %r8 
	movq	(%rdx), %rdi
	movq	(%r10), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	%r8 , %rcx
	pushq	%rdi
	movq	%rdx, %rdi
	popq	%rdx
	callq	binary_search
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_then3682:
	movq	(%r8 ), %r8 
	movq	(%rdi), %rdx
	movq	%rdx, %rdi
	addq	$1, %rdi
	movq	(%r10), %rsi
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	%r8 , %rcx
	pushq	%rdi
	movq	%rdx, %rdi
	popq	%rdx
	callq	binary_search
	popq	%rsi
	popq	%rdi
	popq	%r8 
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
	subq	$8, %rsp
	movq	%rsp, %r8 
	subq	$8, %rsp
	movq	%rsp, %r9 
	subq	$8, %rsp
	movq	%rsp, %rdi
	subq	$8, %rsp
	movq	%rsp, %rsi
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$100, %rdi
	callq	oat_alloc_array
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	movq	%rax, %rdx
	movq	%rdx, %rax
	movq	%rax, %rdx
	movq	%rdx, (%r8 )
	movq	$0, %rax
	movq	%r9 , %rcx
	movq	%rax, (%rcx)
	jmp	_cond3590
	.text
_body3589:
	movq	(%r8 ), %r10
	movq	(%r9 ), %r11
	movq	%r10, %rax
	movq	%rax, %rdx
	pushq	%r11
	pushq	%r10
	pushq	%r9 
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r11, %rsi
	movq	%rdx, %rdi
	callq	oat_assert_array_length
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r8 
	popq	%r9 
	popq	%r10
	popq	%r11
	movq	%r10, %rax
	addq	$0, %rax
	addq	$8, %rax
	movq	%rax, %rcx
	movq	%r11, %rax
	imulq	$8, %rax
	addq	%rcx, %rax
	movq	%rax, %r10
	movq	(%r9 ), %rdx
	imulq	$2, %rdx
	addq	$1, %rdx
	movq	%rdx, (%r10)
	movq	(%r9 ), %rdx
	addq	$1, %rdx
	movq	%rdx, (%r9 )
	jmp	_cond3590
	.text
_cond3590:
	movq	(%r9 ), %rdx
	cmpq	$100, %rdx
	setl	%dl
	andq	$1, %rdx
	cmpq	$0, %rdx
	jne	_body3589
	jmp	_post3588
	.text
_else3623:
	jmp	_merge3622
	.text
_merge3622:
	movq	$0, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq	
	.text
_post3588:
	movq	(%r8 ), %rdx
	pushq	%r8 
	pushq	%rdi
	pushq	%rsi
	movq	$99, %rcx
	movq	$80, %rsi
	movq	%rdx, %rdi
	movq	$0, %rdx
	callq	binary_search
	popq	%rsi
	popq	%rdi
	popq	%r8 
	movq	%rax, %rdx
	movq	%rdx, (%rdi)
	movq	(%r8 ), %rdx
	pushq	%rdi
	pushq	%rsi
	movq	$99, %rcx
	movq	$81, %rsi
	movq	%rdx, %rdi
	movq	$0, %rdx
	callq	binary_search
	popq	%rsi
	popq	%rdi
	movq	%rax, %rdx
	movq	%rdx, (%rsi)
	movq	(%rdi), %r8 
	movq	(%rsi), %rdx
	andq	%r8 , %rdx
	cmpq	$0, %rdx
	sete	%r8b
	andq	$1, %r8 
	movq	(%rdi), %rdi
	movq	(%rsi), %rdx
	orq	%rdi, %rdx
	andq	%r8 , %rdx
	cmpq	$0, %rdx
	jne	_then3624
	jmp	_else3623
	.text
_then3624:
	leaq	_str_arr3619(%rip), %rax
	addq	$0, %rax
	addq	$0, %rax
	movq	%rax, %rdx
	pushq	%rdx
	movq	%rdx, %rdi
	callq	print_string
	popq	%rdx
	jmp	_merge3622