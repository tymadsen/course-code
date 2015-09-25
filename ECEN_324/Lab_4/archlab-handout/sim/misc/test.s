	.file	"examples.c"
	.text
	.p2align 4,,15
.globl main
	.type	main, @function
main:
	pushl	%ebp
	xorl	%eax, %eax
	movl	%esp, %ebp
	movl	$0, 4(%eax)
	movl	$12, (%eax)
	.p2align 4,,7
	.p2align 3
.L2:
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L2
	popl	%ebp
	ret
	.size	main, .-main
	.p2align 4,,15
.globl sum_list
	.type	sum_list, @function
sum_list:
	pushl	%ebp
	xorl	%eax, %eax
	movl	%esp, %ebp
	movl	8(%ebp), %edx
	testl	%edx, %edx
	je	.L8
	.p2align 4,,7
	.p2align 3
.L11:
	addl	(%edx), %eax
	movl	4(%edx), %edx
	testl	%edx, %edx
	jne	.L11
.L8:
	popl	%ebp
	ret
	.size	sum_list, .-sum_list
	.p2align 4,,15
.globl rsum_list
	.type	rsum_list, @function
rsum_list:
	pushl	%ebp
	xorl	%eax, %eax
	movl	%esp, %ebp
	movl	8(%ebp), %edx
	testl	%edx, %edx
	je	.L15
	.p2align 4,,7
	.p2align 3
.L18:
	movl	(%edx), %ecx
	movl	4(%edx), %edx
	addl	%ecx, %eax
	testl	%edx, %edx
	jne	.L18
.L15:
	popl	%ebp
	ret
	.size	rsum_list, .-rsum_list
	.p2align 4,,15
.globl copy_block
	.type	copy_block, @function
copy_block:
	pushl	%ebp
	xorl	%edx, %edx
	movl	%esp, %ebp
	xorl	%eax, %eax
	movl	16(%ebp), %ecx
	pushl	%edi
	movl	8(%ebp), %edi
	pushl	%esi
	movl	12(%ebp), %esi
	pushl	%ebx
	testl	%ecx, %ecx
	jle	.L22
	.p2align 4,,7
	.p2align 3
.L25:
	movl	(%edi,%edx), %ebx
	movl	%ebx, (%esi,%edx)
	xorl	%ebx, %eax
	addl	$4, %edx
	subl	$1, %ecx
	jne	.L25
.L22:
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	copy_block, .-copy_block
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-3)"
	.section	.note.GNU-stack,"",@progbits
