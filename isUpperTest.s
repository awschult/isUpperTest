	.file	"isUpperTest.c"
	.text
	.p2align 4,,15
	.globl	isUpperSubtract
	.type	isUpperSubtract, @function
isUpperSubtract:
.LFB43:
	.cfi_startproc
	xorl	%eax, %eax
	cmpb	$96, %dil
	setle	%al
	ret
	.cfi_endproc
.LFE43:
	.size	isUpperSubtract, .-isUpperSubtract
	.p2align 4,,15
	.globl	isUpperBitwise
	.type	isUpperBitwise, @function
isUpperBitwise:
.LFB44:
	.cfi_startproc
	movl	%edi, %eax
	shrl	$6, %eax
	andl	$1, %eax
	ret
	.cfi_endproc
.LFE44:
	.size	isUpperBitwise, .-isUpperBitwise
	.p2align 4,,15
	.globl	isUpperSTD
	.type	isUpperSTD, @function
isUpperSTD:
.LFB45:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movsbq	%dil, %rbx
	call	__ctype_b_loc@PLT
	movq	(%rax), %rax
	movzwl	(%rax,%rbx,2), %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	andw	$256, %ax
	movzwl	%ax, %eax
	ret
	.cfi_endproc
.LFE45:
	.size	isUpperSTD, .-isUpperSTD
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Creating %d characters...\n"
.LC4:
	.string	"Testing std function."
.LC5:
	.string	"Answer = %d\n"
.LC6:
	.string	"Total ticks for std:  %ld\n"
.LC7:
	.string	"Testing bitwise function."
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC8:
	.string	"Total ticks for Bitwise:  %ld\n"
	.section	.rodata.str1.1
.LC9:
	.string	"Testing subtract function."
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"Total ticks for subtract:  %ld\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB46:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movl	$1000000, %edi
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	call	malloc@PLT
	movq	%rax, %rbx
	movl	$1, %eax
	testq	%rbx, %rbx
	je	.L6
	leaq	.LC0(%rip), %rsi
	movl	$1000000, %edx
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movq	%rbx, %rdx
	negq	%rdx
	andl	$15, %edx
	je	.L13
	movsbw	(%rbx), %ax
	movl	$58, %ecx
	idivb	%cl
	movzbl	%ah, %eax
	addl	$65, %eax
	cmpq	$1, %rdx
	movb	%al, (%rbx)
	je	.L14
	movsbw	1(%rbx), %ax
	idivb	%cl
	movzbl	%ah, %eax
	addl	$65, %eax
	cmpq	$2, %rdx
	movb	%al, 1(%rbx)
	je	.L15
	movsbw	2(%rbx), %ax
	idivb	%cl
	movzbl	%ah, %eax
	addl	$65, %eax
	cmpq	$3, %rdx
	movb	%al, 2(%rbx)
	je	.L16
	movsbw	3(%rbx), %ax
	idivb	%cl
	movzbl	%ah, %eax
	addl	$65, %eax
	cmpq	$4, %rdx
	movb	%al, 3(%rbx)
	je	.L17
	movsbw	4(%rbx), %ax
	idivb	%cl
	movzbl	%ah, %eax
	addl	$65, %eax
	cmpq	$5, %rdx
	movb	%al, 4(%rbx)
	je	.L18
	movsbw	5(%rbx), %ax
	idivb	%cl
	movzbl	%ah, %eax
	addl	$65, %eax
	cmpq	$6, %rdx
	movb	%al, 5(%rbx)
	je	.L19
	movsbw	6(%rbx), %ax
	idivb	%cl
	movzbl	%ah, %eax
	addl	$65, %eax
	cmpq	$7, %rdx
	movb	%al, 6(%rbx)
	je	.L20
	movsbw	7(%rbx), %ax
	idivb	%cl
	movzbl	%ah, %eax
	addl	$65, %eax
	cmpq	$8, %rdx
	movb	%al, 7(%rbx)
	je	.L21
	movsbw	8(%rbx), %ax
	idivb	%cl
	movzbl	%ah, %eax
	addl	$65, %eax
	cmpq	$9, %rdx
	movb	%al, 8(%rbx)
	je	.L22
	movsbw	9(%rbx), %ax
	idivb	%cl
	movzbl	%ah, %eax
	addl	$65, %eax
	cmpq	$10, %rdx
	movb	%al, 9(%rbx)
	je	.L23
	movsbw	10(%rbx), %ax
	idivb	%cl
	movzbl	%ah, %eax
	addl	$65, %eax
	cmpq	$11, %rdx
	movb	%al, 10(%rbx)
	je	.L24
	movsbw	11(%rbx), %ax
	idivb	%cl
	movzbl	%ah, %eax
	addl	$65, %eax
	cmpq	$12, %rdx
	movb	%al, 11(%rbx)
	je	.L25
	movsbw	12(%rbx), %ax
	idivb	%cl
	movzbl	%ah, %eax
	addl	$65, %eax
	cmpq	$13, %rdx
	movb	%al, 12(%rbx)
	je	.L26
	movsbw	13(%rbx), %ax
	idivb	%cl
	movzbl	%ah, %eax
	addl	$65, %eax
	cmpq	$15, %rdx
	movb	%al, 13(%rbx)
	jne	.L27
	movsbw	14(%rbx), %ax
	movl	$999985, %r8d
	movl	$15, %r9d
	idivb	%cl
	movzbl	%ah, %eax
	addl	$65, %eax
	movb	%al, 14(%rbx)
.L8:
	pxor	%xmm3, %xmm3
	movdqa	.LC1(%rip), %xmm4
	movl	$1000000, %edi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movdqa	%xmm4, %xmm5
	subq	%rdx, %rdi
	movdqa	%xmm3, %xmm0
	movq	%rdi, %rsi
	movdqa	.LC2(%rip), %xmm2
	shrq	$4, %rsi
	pcmpgtb	%xmm4, %xmm0
	addq	%rbx, %rdx
	movdqa	.LC3(%rip), %xmm6
	punpcklbw	%xmm0, %xmm5
	punpckhbw	%xmm0, %xmm4
	.p2align 4,,10
	.p2align 3
.L10:
	movdqa	(%rdx,%rax), %xmm1
	movdqa	%xmm3, %xmm7
	movdqa	%xmm5, %xmm0
	addq	$1, %rcx
	pcmpgtb	%xmm1, %xmm7
	movdqa	%xmm1, %xmm8
	movdqa	%xmm1, %xmm9
	punpcklbw	%xmm7, %xmm8
	movdqa	%xmm3, %xmm10
	punpckhbw	%xmm7, %xmm9
	movdqa	%xmm4, %xmm7
	pmullw	%xmm8, %xmm0
	psrlw	$8, %xmm0
	psraw	$7, %xmm8
	pmullw	%xmm9, %xmm7
	psrlw	$8, %xmm7
	packuswb	%xmm7, %xmm0
	psraw	$7, %xmm9
	pand	%xmm2, %xmm8
	pand	%xmm2, %xmm9
	pcmpgtb	%xmm0, %xmm10
	movdqa	%xmm0, %xmm7
	punpcklbw	%xmm10, %xmm7
	punpckhbw	%xmm10, %xmm0
	packuswb	%xmm9, %xmm8
	psraw	$4, %xmm7
	pand	%xmm2, %xmm7
	psraw	$4, %xmm0
	pand	%xmm2, %xmm0
	movdqa	%xmm7, %xmm11
	packuswb	%xmm0, %xmm11
	movdqa	%xmm11, %xmm7
	psubb	%xmm8, %xmm7
	movdqa	%xmm7, %xmm0
	paddb	%xmm7, %xmm0
	paddb	%xmm0, %xmm0
	paddb	%xmm0, %xmm0
	psubb	%xmm7, %xmm0
	paddb	%xmm0, %xmm0
	paddb	%xmm0, %xmm0
	paddb	%xmm7, %xmm0
	paddb	%xmm0, %xmm0
	psubb	%xmm0, %xmm1
	paddb	%xmm6, %xmm1
	movaps	%xmm1, (%rdx,%rax)
	addq	$16, %rax
	cmpq	%rcx, %rsi
	ja	.L10
	movq	%rdi, %rax
	movq	%r8, %rcx
	andq	$-16, %rax
	subq	%rax, %rcx
	cmpq	%rdi, %rax
	leaq	(%rax,%r9), %rdx
	je	.L11
	leaq	(%rbx,%rdx), %rdi
	movl	$58, %esi
	movsbw	(%rdi), %ax
	idivb	%sil
	movzbl	%ah, %eax
	addl	$65, %eax
	cmpq	$1, %rcx
	movb	%al, (%rdi)
	leaq	1(%rdx), %rdi
	je	.L11
	addq	%rbx, %rdi
	movsbw	(%rdi), %ax
	idivb	%sil
	movzbl	%ah, %eax
	addl	$65, %eax
	cmpq	$2, %rcx
	movb	%al, (%rdi)
	leaq	2(%rdx), %rdi
	je	.L11
	addq	%rbx, %rdi
	movsbw	(%rdi), %ax
	idivb	%sil
	movzbl	%ah, %eax
	addl	$65, %eax
	cmpq	$3, %rcx
	movb	%al, (%rdi)
	leaq	3(%rdx), %rdi
	je	.L11
	addq	%rbx, %rdi
	movsbw	(%rdi), %ax
	idivb	%sil
	movzbl	%ah, %eax
	addl	$65, %eax
	cmpq	$4, %rcx
	movb	%al, (%rdi)
	leaq	4(%rdx), %rdi
	je	.L11
	addq	%rbx, %rdi
	movsbw	(%rdi), %ax
	idivb	%sil
	movzbl	%ah, %eax
	addl	$65, %eax
	cmpq	$5, %rcx
	movb	%al, (%rdi)
	leaq	5(%rdx), %rdi
	je	.L11
	addq	%rbx, %rdi
	movsbw	(%rdi), %ax
	idivb	%sil
	movzbl	%ah, %eax
	addl	$65, %eax
	cmpq	$6, %rcx
	movb	%al, (%rdi)
	leaq	6(%rdx), %rdi
	je	.L11
	addq	%rbx, %rdi
	movsbw	(%rdi), %ax
	idivb	%sil
	movzbl	%ah, %eax
	addl	$65, %eax
	cmpq	$7, %rcx
	movb	%al, (%rdi)
	leaq	7(%rdx), %rdi
	je	.L11
	addq	%rbx, %rdi
	movsbw	(%rdi), %ax
	idivb	%sil
	movzbl	%ah, %eax
	addl	$65, %eax
	cmpq	$8, %rcx
	movb	%al, (%rdi)
	leaq	8(%rdx), %rdi
	je	.L11
	addq	%rbx, %rdi
	movsbw	(%rdi), %ax
	idivb	%sil
	movzbl	%ah, %eax
	addl	$65, %eax
	cmpq	$9, %rcx
	movb	%al, (%rdi)
	leaq	9(%rdx), %rdi
	je	.L11
	addq	%rbx, %rdi
	movsbw	(%rdi), %ax
	idivb	%sil
	movzbl	%ah, %eax
	addl	$65, %eax
	cmpq	$10, %rcx
	movb	%al, (%rdi)
	leaq	10(%rdx), %rdi
	je	.L11
	addq	%rbx, %rdi
	movsbw	(%rdi), %ax
	idivb	%sil
	movzbl	%ah, %eax
	addl	$65, %eax
	cmpq	$11, %rcx
	movb	%al, (%rdi)
	leaq	11(%rdx), %rdi
	je	.L11
	addq	%rbx, %rdi
	movsbw	(%rdi), %ax
	idivb	%sil
	movzbl	%ah, %eax
	addl	$65, %eax
	cmpq	$12, %rcx
	movb	%al, (%rdi)
	leaq	12(%rdx), %rdi
	je	.L11
	addq	%rbx, %rdi
	movsbw	(%rdi), %ax
	idivb	%sil
	movzbl	%ah, %eax
	addl	$65, %eax
	cmpq	$13, %rcx
	movb	%al, (%rdi)
	leaq	13(%rdx), %rdi
	je	.L11
	addq	%rbx, %rdi
	addq	$14, %rdx
	movsbw	(%rdi), %ax
	idivb	%sil
	movzbl	%ah, %eax
	addl	$65, %eax
	cmpq	$14, %rcx
	movb	%al, (%rdi)
	je	.L11
	addq	%rbx, %rdx
	movsbw	(%rdx), %ax
	idivb	%sil
	movzbl	%ah, %eax
	addl	$65, %eax
	movb	%al, (%rdx)
.L11:
	leaq	.LC4(%rip), %rdi
	call	puts@PLT
	call	clock@PLT
	movq	%rax, %r14
	call	__ctype_b_loc@PLT
	movsbq	(%rbx), %rdx
	movq	(%rax), %rax
	movzwl	(%rax,%rdx,2), %ebp
	movq	%rdx, %r12
	call	clock@PLT
	leaq	.LC5(%rip), %rsi
	movq	%rax, %r13
	movl	$1, %edi
	xorl	%eax, %eax
	andw	$256, %bp
	movzwl	%bp, %edx
	call	__printf_chk@PLT
	leaq	.LC6(%rip), %rsi
	movq	%r13, %rdx
	movl	$1, %edi
	subq	%r14, %rdx
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	call	clock@PLT
	movq	%rax, %r13
	call	clock@PLT
	movl	%r12d, %edx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rbp
	shrl	$6, %edx
	movl	$1, %edi
	xorl	%eax, %eax
	andl	$1, %edx
	call	__printf_chk@PLT
	leaq	.LC8(%rip), %rsi
	movq	%rbp, %rdx
	movl	$1, %edi
	subq	%r13, %rdx
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	call	clock@PLT
	movq	%rax, %r13
	call	clock@PLT
	xorl	%edx, %edx
	leaq	.LC5(%rip), %rsi
	cmpb	$96, %r12b
	setle	%dl
	movq	%rax, %rbp
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	.LC10(%rip), %rsi
	movq	%rbp, %rdx
	movl	$1, %edi
	subq	%r13, %rdx
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	%rbx, %rdi
	call	free@PLT
	xorl	%eax, %eax
.L6:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L15:
	.cfi_restore_state
	movl	$999998, %r8d
	movl	$2, %r9d
	jmp	.L8
.L14:
	movl	$999999, %r8d
	movl	$1, %r9d
	jmp	.L8
.L13:
	movl	$1000000, %r8d
	xorl	%r9d, %r9d
	jmp	.L8
.L16:
	movl	$999997, %r8d
	movl	$3, %r9d
	jmp	.L8
.L17:
	movl	$999996, %r8d
	movl	$4, %r9d
	jmp	.L8
.L18:
	movl	$999995, %r8d
	movl	$5, %r9d
	jmp	.L8
.L19:
	movl	$999994, %r8d
	movl	$6, %r9d
	jmp	.L8
.L20:
	movl	$999993, %r8d
	movl	$7, %r9d
	jmp	.L8
.L21:
	movl	$999992, %r8d
	movl	$8, %r9d
	jmp	.L8
.L22:
	movl	$999991, %r8d
	movl	$9, %r9d
	jmp	.L8
.L23:
	movl	$999990, %r8d
	movl	$10, %r9d
	jmp	.L8
.L24:
	movl	$999989, %r8d
	movl	$11, %r9d
	jmp	.L8
.L25:
	movl	$999988, %r8d
	movl	$12, %r9d
	jmp	.L8
.L26:
	movl	$999987, %r8d
	movl	$13, %r9d
	jmp	.L8
.L27:
	movl	$999986, %r8d
	movl	$14, %r9d
	jmp	.L8
	.cfi_endproc
.LFE46:
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC1:
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.byte	71
	.align 16
.LC2:
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.value	255
	.align 16
.LC3:
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.byte	65
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
