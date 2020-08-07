	.file	"rgb_to_ycc_hardware.c"
	.text
	.globl	rgb_to_ycc
	.type	rgb_to_ycc, @function
rgb_to_ycc:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movl	%edx, -80(%rbp)
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movl	-76(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -32(%rbp)
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movl	-76(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	shrq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -24(%rbp)
	movl	-80(%rbp), %eax
	movslq	%eax, %rdx
	movl	-76(%rbp), %eax
	cltq
	imulq	%rdx, %rax
	shrq	$2, %rax
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -16(%rbp)
	movl	$48, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	-80(%rbp), %edx
	movl	%edx, 28(%rax)
	movq	-8(%rbp), %rax
	movl	-76(%rbp), %edx
	movl	%edx, 24(%rax)
	movl	-80(%rbp), %eax
	imull	-76(%rbp), %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 32(%rax)
	movl	-80(%rbp), %eax
	imull	-76(%rbp), %eax
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 36(%rax)
	movl	-80(%rbp), %eax
	imull	-76(%rbp), %eax
	leal	3(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 40(%rax)
	movq	-8(%rbp), %rax
	movl	32(%rax), %edx
	movq	-8(%rbp), %rax
	movl	36(%rax), %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	40(%rax), %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 44(%rax)
	movl	-80(%rbp), %eax
	imull	-76(%rbp), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, -52(%rbp)
	movl	-76(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, -48(%rbp)
	movl	$0, -64(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -56(%rbp)
	jmp	.L2
.L7:
	movl	-56(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -44(%rbp)
	jmp	.L3
.L4:
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %edx
	movl	-56(%rbp), %eax
	cltq
	leaq	1(%rax), %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %edx
	movl	-56(%rbp), %eax
	cltq
	leaq	2(%rax), %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%edx, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
#APP
# 48 "rgb_to_ycc_hardware.c" 1
	rgb_to_ycc	%eax, %eax

# 0 "" 2
#NO_APP
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movl	-64(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -64(%rbp)
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-36(%rbp), %eax
	shrl	$16, %eax
	movl	%eax, %ecx
	movl	-60(%rbp), %eax
	movslq	%eax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	movl	-36(%rbp), %eax
	shrl	$8, %eax
	movl	%eax, %ecx
	movl	-60(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -60(%rbp)
	movslq	%eax, %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$3, -56(%rbp)
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %edx
	movl	-56(%rbp), %eax
	cltq
	leaq	1(%rax), %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %edx
	movl	-56(%rbp), %eax
	cltq
	leaq	2(%rax), %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%edx, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
#APP
# 65 "rgb_to_ycc_hardware.c" 1
	rgb_to_ycc	%eax, %eax

# 0 "" 2
#NO_APP
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movl	-64(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -64(%rbp)
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$3, -56(%rbp)
.L3:
	movl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L4
	movl	-56(%rbp), %edx
	movl	-48(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -44(%rbp)
	jmp	.L5
.L6:
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movq	-72(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$24, %eax
	movl	%eax, %edx
	movl	-56(%rbp), %eax
	cltq
	leaq	1(%rax), %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$16, %eax
	orl	%eax, %edx
	movl	-56(%rbp), %eax
	cltq
	leaq	2(%rax), %rcx
	movq	-72(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	sall	$8, %eax
	orl	%edx, %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
#APP
# 82 "rgb_to_ycc_hardware.c" 1
	rgb_to_ycc	%eax, %eax

# 0 "" 2
#NO_APP
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %ecx
	movl	-64(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -64(%rbp)
	movslq	%eax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	%ecx, %edx
	movb	%dl, (%rax)
	addl	$3, -56(%rbp)
.L5:
	movl	-56(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L6
.L2:
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jl	.L7
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	rgb_to_ycc, .-rgb_to_ycc
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
