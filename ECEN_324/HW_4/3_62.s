	.file	"3_62.c"
	.text
	.p2align 4,,15
.globl transpose
	.type	transpose, @function
transpose:
.LFB12:
	.cfi_startproc
	xorl	%r10d, %r10d
	leaq	16(%rdi), %rcx
	movl	$4, %r9d
	addl	$1, %r10d
	cmpl	$4, %r10d
	je	.L5
.L8:
	movslq	%r10d, %rax
	leaq	(%rdi,%rax,4), %rdx
	xorl	%eax, %eax
.L3:
	movl	(%rdx), %r8d
	movl	(%rcx,%rax), %esi
	movl	%r8d, (%rcx,%rax)
	addq	$4, %rax
	movl	%esi, (%rdx)
	addq	$16, %rdx
	cmpq	%rax, %r9
	jne	.L3
	addl	$1, %r10d
	addq	$16, %rcx
	addq	$4, %r9
	cmpl	$4, %r10d
	jne	.L8
.L5:
	rep
	ret
	.cfi_endproc
.LFE12:
	.size	transpose, .-transpose
	.p2align 4,,15
.globl transpose_optimized
	.type	transpose_optimized, @function
transpose_optimized:
.LFB13:
	.cfi_startproc
	leaq	16(%rdi), %r10
	movl	$1, %esi
.L10:
	movslq	%esi, %rax
	xorl	%ecx, %ecx
	leaq	(%rdi,%rax,4), %rdx
	movq	%r10, %rax
.L11:
	movl	(%rax), %r8d
	movl	(%rdx), %r9d
	addl	$1, %ecx
	movl	%r9d, (%rax)
	movl	%r8d, (%rdx)
	addq	$4, %rax
	addq	$16, %rdx
	cmpl	%ecx, %esi
	jg	.L11
	addl	$1, %esi
	addq	$16, %r10
	cmpl	$4, %esi
	jne	.L10
	rep
	ret
	.cfi_endproc
.LFE13:
	.size	transpose_optimized, .-transpose_optimized
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%8d   "
	.text
	.p2align 4,,15
.globl print_matrix
	.type	print_matrix, @function
print_matrix:
.LFB11:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	xorl	%r12d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
.L16:
	xorl	%ebx, %ebx
.L17:
	movl	0(%rbp,%rbx), %esi
	xorl	%eax, %eax
	movl	$.LC0, %edi
	addq	$4, %rbx
	call	printf
	cmpq	$16, %rbx
	jne	.L17
	movl	$10, %edi
	addl	$1, %r12d
	addq	$16, %rbp
	call	putchar
	cmpl	$4, %r12d
	jne	.L16
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	print_matrix, .-print_matrix
	.p2align 4,,15
.globl main
	.type	main, @function
main:
.LFB14:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$64, %rsp
	.cfi_def_cfa_offset 80
	movq	%rsp, %rdi
	movl	$1, (%rsp)
	movl	$2, 4(%rsp)
	movl	$3, 8(%rsp)
	movl	$4, 12(%rsp)
	movl	$1, 16(%rsp)
	movl	$2, 20(%rsp)
	movl	$3, 24(%rsp)
	movl	$4, 28(%rsp)
	movl	$1, 32(%rsp)
	movl	$2, 36(%rsp)
	movl	$3, 40(%rsp)
	movl	$4, 44(%rsp)
	movl	$1, 48(%rsp)
	movl	$2, 52(%rsp)
	movl	$3, 56(%rsp)
	movl	$4, 60(%rsp)
	call	print_matrix
	movl	$10, %edi
	call	putchar
	movq	%rsp, %rdi
	call	transpose
	movq	%rsp, %rdi
	call	transpose_optimized
	movq	%rsp, %rdi
	call	print_matrix
	addq	$64, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE14:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-3)"
	.section	.note.GNU-stack,"",@progbits
