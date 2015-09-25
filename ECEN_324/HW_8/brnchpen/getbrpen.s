	.file	"getbrpen.c"
	.text
	.p2align 4,,15
.globl sortcycle
	.type	sortcycle, @function
sortcycle:
.LFB19:
	.cfi_startproc
	movl	cindex(%rip), %r8d
	movl	$1, %r9d
	movl	$1, %eax
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L4:
	leal	-1(%rax), %edx
	movslq	%eax, %rsi
	movl	cycle(,%rsi,4), %ecx
	movslq	%edx, %rdx
	movl	cycle(,%rdx,4), %edi
	cmpl	%ecx, %edi
	jbe	.L3
	movl	%edi, cycle(,%rsi,4)
	xorl	%r9d, %r9d
	movl	%ecx, cycle(,%rdx,4)
.L3:
	addl	$1, %eax
.L7:
	cmpl	%r8d, %eax
	jl	.L4
	testl	%r9d, %r9d
	jne	.L6
	movb	$1, %r9b
	movl	$1, %eax
	jmp	.L7
.L6:
	rep
	ret
	.cfi_endproc
.LFE19:
	.size	sortcycle, .-sortcycle
	.p2align 4,,15
.globl initarrays1
	.type	initarrays1, @function
initarrays1:
.LFB21:
	.cfi_startproc
	testl	%edi, %edi
	jle	.L12
	subl	$1, %edi
	movq	valA(%rip), %rsi
	movq	valB(%rip), %rcx
	leaq	4(,%rdi,4), %rdx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L11:
	movl	$0, (%rsi,%rax)
	movl	$10, (%rcx,%rax)
	addq	$4, %rax
	cmpq	%rdx, %rax
	jne	.L11
.L12:
	rep
	ret
	.cfi_endproc
.LFE21:
	.size	initarrays1, .-initarrays1
	.p2align 4,,15
.globl clearlist
	.type	clearlist, @function
clearlist:
.LFB23:
	.cfi_startproc
	movl	$0, cindex(%rip)
	ret
	.cfi_endproc
.LFE23:
	.size	clearlist, .-clearlist
	.p2align 4,,15
.globl absdiff
	.type	absdiff, @function
absdiff:
.LFB26:
	.cfi_startproc
	movl	%edi, %eax
	movl	%esi, %edx
	subl	%esi, %eax
	subl	%edi, %edx
	cmpl	%esi, %edi
	cmovle	%edx, %eax
	ret
	.cfi_endproc
.LFE26:
	.size	absdiff, .-absdiff
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Best time = %u\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"  Difference exceeds threshold: "
	.align 8
.LC4:
	.string	"third best = %u, diff: %.2f%%\n"
	.text
	.p2align 4,,15
.globl testbest
	.type	testbest, @function
testbest:
.LFB24:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	cycle(%rip), %esi
	xorl	%eax, %eax
	movl	$.LC0, %edi
	call	printf
	mov	cycle+8(%rip), %eax
	cvtsi2sdq	%rax, %xmm1
	mov	cycle(%rip), %eax
	cvtsi2sdq	%rax, %xmm0
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	ucomisd	.LC1(%rip), %xmm0
	ja	.L34
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L34:
	.cfi_restore_state
	movl	$.LC2, %edi
	xorl	%eax, %eax
	call	printf
	movl	cycle+8(%rip), %esi
	movl	$.LC4, %edi
	mov	%esi, %eax
	cvtsi2sdq	%rax, %xmm1
	mov	cycle(%rip), %eax
	cvtsi2sdq	%rax, %xmm0
	movl	$1, %eax
	movapd	%xmm1, %xmm2
	subsd	%xmm0, %xmm2
	movsd	.LC3(%rip), %xmm0
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	mulsd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	jmp	printf
	.cfi_endproc
.LFE24:
	.size	testbest, .-testbest
	.p2align 4,,15
.globl measure
	.type	measure, @function
measure:
.LFB28:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%edi, %ebx
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movl	$0, 12(%rsp)
	movl	12(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 12(%rsp)
	call	start_counter
	testl	%ebx, %ebx
	jle	.L36
	leal	-1(%rbx), %eax
	movq	valB(%rip), %r10
	movq	valA(%rip), %r9
	leaq	4(,%rax,4), %r8
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L39:
	movl	(%r9,%rax), %ecx
	movl	(%r10,%rax), %esi
	movl	%ecx, %edx
	movl	%esi, %edi
	subl	%ecx, %edi
	subl	%esi, %edx
	cmpl	%ecx, %esi
	movl	12(%rsp), %ecx
	cmovge	%edi, %edx
	addq	$4, %rax
	addl	%ecx, %edx
	cmpq	%r8, %rax
	movl	%edx, 12(%rsp)
	jne	.L39
.L36:
	call	get_counter
	xorl	%edx, %edx
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	divl	%ebx
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE28:
	.size	measure, .-measure
	.p2align 4,,15
.globl measurecnt
	.type	measurecnt, @function
measurecnt:
.LFB27:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movl	$1, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	movl	$0, 12(%rsp)
	.p2align 4,,10
	.p2align 3
.L44:
	movl	12(%rsp), %eax
	xorl	%ebx, %ebx
	addl	$1, %eax
	movl	%eax, 12(%rsp)
	call	start_counter
	.p2align 4,,10
	.p2align 3
.L43:
	movl	12(%rsp), %edx
	addl	$1, %ebx
	addl	$1, %edx
	cmpl	%ebp, %ebx
	movl	%edx, 12(%rsp)
	jne	.L43
	call	get_counter
	cmpl	$999999, %eax
	leal	(%rbx,%rbx), %ebp
	jbe	.L44
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	movl	%ebp, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE27:
	.size	measurecnt, .-measurecnt
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"fatal error: overflowed cycle array\n"
	.text
	.p2align 4,,15
.globl addtolist
	.type	addtolist, @function
addtolist:
.LFB25:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	cindex(%rip), %r9d
	movslq	%r9d, %rax
	addl	$1, %r9d
	cmpl	$20, %r9d
	movl	%edi, cycle(,%rax,4)
	movl	%r9d, cindex(%rip)
	jg	.L49
	movl	$1, %edx
	movl	$1, %eax
	.p2align 4,,10
	.p2align 3
.L55:
	cmpl	%eax, %r9d
	jg	.L52
.L56:
	testl	%edx, %edx
	jne	.L54
	movl	$1, %eax
	movb	$1, %dl
	cmpl	%eax, %r9d
	jle	.L56
.L52:
	leal	-1(%rax), %ecx
	movslq	%eax, %rdi
	movl	cycle(,%rdi,4), %esi
	movslq	%ecx, %rcx
	movl	cycle(,%rcx,4), %r8d
	cmpl	%esi, %r8d
	jbe	.L51
	movl	%r8d, cycle(,%rdi,4)
	xorl	%edx, %edx
	movl	%esi, cycle(,%rcx,4)
.L51:
	addl	$1, %eax
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L54:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L49:
	.cfi_restore_state
	movq	stderr(%rip), %rcx
	movl	$.LC5, %edi
	movl	$36, %edx
	movl	$1, %esi
	call	fwrite
	orl	$-1, %edi
	call	exit
	.cfi_endproc
.LFE25:
	.size	addtolist, .-addtolist
	.p2align 4,,15
.globl initarrays2
	.type	initarrays2, @function
initarrays2:
.LFB22:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movl	%edi, %ebx
	xorl	%edi, %edi
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	call	srand48
	testl	%ebx, %ebx
	jle	.L60
	xorl	%ebp, %ebp
	xorl	%r12d, %r12d
	.p2align 4,,10
	.p2align 3
.L59:
	movq	%rbp, %r13
	addq	valA(%rip), %r13
	addl	$1, %r12d
	call	mrand48
	movl	%eax, 0(%r13)
	movq	%rbp, %r13
	addq	valB(%rip), %r13
	addq	$4, %rbp
	call	mrand48
	cmpl	%r12d, %ebx
	movl	%eax, 0(%r13)
	jg	.L59
.L60:
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE22:
	.size	initarrays2, .-initarrays2
	.section	.rodata.str1.1
.LC6:
	.string	"Malloc failed\n"
	.text
	.p2align 4,,15
.globl allocarrays
	.type	allocarrays, @function
allocarrays:
.LFB20:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leal	0(,%rdi,4), %ebx
	movslq	%ebx, %rbx
	movq	%rbx, %rdi
	call	malloc
	testq	%rax, %rax
	movq	%rax, valA(%rip)
	je	.L66
	movq	%rbx, %rdi
	call	malloc
	testq	%rax, %rax
	movq	%rax, valB(%rip)
	je	.L66
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L66:
	.cfi_restore_state
	movq	stderr(%rip), %rcx
	movl	$.LC6, %edi
	movl	$14, %edx
	movl	$1, %esi
	call	fwrite
	orl	$-1, %edi
	call	exit
	.cfi_endproc
.LFE20:
	.size	allocarrays, .-allocarrays
	.section	.rodata.str1.8
	.align 8
.LC7:
	.string	"Measuring using %d iterations\n"
	.align 8
.LC8:
	.string	"Cycles per function call, predictable branches"
	.align 8
.LC9:
	.string	"Cycles per function call, unpredictable branches"
	.text
	.p2align 4,,15
.globl main
	.type	main, @function
main:
.LFB29:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	measurecnt
	movl	$.LC7, %edi
	movl	%eax, %ebx
	movl	%eax, %esi
	xorl	%eax, %eax
	call	printf
	movl	%ebx, %edi
	call	allocarrays
	testl	%ebx, %ebx
	jle	.L68
	leal	-1(%rbx), %eax
	movq	valA(%rip), %rsi
	movq	valB(%rip), %rcx
	leaq	4(,%rax,4), %rdx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L69:
	movl	$0, (%rsi,%rax)
	movl	$10, (%rcx,%rax)
	addq	$4, %rax
	cmpq	%rdx, %rax
	jne	.L69
.L68:
	movl	$0, cindex(%rip)
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L70:
	movl	%ebx, %edi
	addl	$1, %ebp
	call	measure
	movl	%eax, %edi
	call	addtolist
	cmpl	$20, %ebp
	jne	.L70
	movl	$.LC8, %edi
	xorb	%bpl, %bpl
	call	puts
	xorl	%eax, %eax
	call	testbest
	movl	%ebx, %edi
	call	initarrays2
	movl	$0, cindex(%rip)
	.p2align 4,,10
	.p2align 3
.L71:
	movl	%ebx, %edi
	addl	$1, %ebp
	call	measure
	movl	%eax, %edi
	call	addtolist
	cmpl	$20, %ebp
	jne	.L71
	movl	$.LC9, %edi
	call	puts
	xorl	%eax, %eax
	call	testbest
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE29:
	.size	main, .-main
	.section	.rodata.str1.1
.LC10:
	.string	"cycle: "
.LC11:
	.string	"%u "
	.text
	.p2align 4,,15
.globl dumpcycle
	.type	dumpcycle, @function
dumpcycle:
.LFB18:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	xorl	%eax, %eax
	movl	$.LC10, %edi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	call	printf
	movl	cindex(%rip), %eax
	testl	%eax, %eax
	jle	.L77
	movl	$cycle, %ebp
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L78:
	movl	0(%rbp), %esi
	xorl	%eax, %eax
	movl	$.LC11, %edi
	addl	$1, %ebx
	addq	$4, %rbp
	call	printf
	cmpl	%ebx, cindex(%rip)
	jg	.L78
.L77:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	movl	$10, %edi
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	putchar
	.cfi_endproc
.LFE18:
	.size	dumpcycle, .-dumpcycle
	.comm	cycle,80,32
	.comm	cindex,4,4
	.comm	valA,8,8
	.comm	valB,8,8
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	1202590843
	.long	1064598241
	.align 8
.LC3:
	.long	0
	.long	1079574528
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-3)"
	.section	.note.GNU-stack,"",@progbits
