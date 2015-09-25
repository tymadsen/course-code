
switch3:
.LFB1:
	.cfi_startproc
	xorl	%eax, %eax
	cmpl	$4, %edx
	ja	.L9
	mov	%edx, %edx
	jmp	*.L8(,%rdx,8)
	.section	.rodata
	.align 8
	.align 4
.L8:
	.quad	.L3
	.quad	.L4
	.quad	.L5
	.quad	.L6
	.quad	.L7
	.text
	.p2align 4,,10
	.p2align 3
.L6:
	movl	(%rdi), %eax
	movl	%eax, (%rsi)
	movl	$17, %eax
.L9:
	rep
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	movl	$17, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L3:
	movl	(%rsi), %edx
	movl	(%rdi), %eax
	movl	%edx, (%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L4:
	movl	(%rsi), %eax
	addl	(%rdi), %eax
	movl	%eax, (%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	movl	(%rdi), %eax
	movl	$15, (%rsi)
	ret
	
