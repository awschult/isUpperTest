	.file	"isUpperTest.c"
	.text
	.globl	isUpperSubtract
	.type	isUpperSubtract, @function
isUpperSubtract:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movsbl	-4(%rbp), %eax
	subl	$97, %eax
	shrl	$31, %eax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	isUpperSubtract, .-isUpperSubtract
	.globl	isUpperBitwise
	.type	isUpperBitwise, @function
isUpperBitwise:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	movsbl	-4(%rbp), %eax
	andl	$32, %eax
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	isUpperBitwise, .-isUpperBitwise
	.globl	isUpperSTD
	.type	isUpperSTD, @function
isUpperSTD:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, %eax
	movb	%al, -4(%rbp)
	call	__ctype_b_loc
	movq	(%rax), %rax
	movsbq	-4(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$256, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	isUpperSTD, .-isUpperSTD
	.section	.rodata
.LC0:
	.string	"Creating %d characters...\n"
.LC1:
	.string	"Testing std function."
.LC2:
	.string	"Answer = %d\n"
.LC3:
	.string	"Total ticks for std:  %ld\n"
.LC4:
	.string	"Testing bitwise function."
	.align 8
.LC5:
	.string	"Total ticks for Bitwise:  %ld\n"
.LC6:
	.string	"Testing subtract function."
	.align 8
.LC7:
	.string	"Total ticks for subtract:  %ld\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	$1, %esi
	movl	$1000000, %edi
	call	calloc
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.L8
	movl	$1, %eax
	jmp	.L9
.L8:
	movl	$1000000, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movq	$0, -40(%rbp)
	jmp	.L10
.L11:
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	movq	-40(%rbp), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	movsbw	%dl, %cx
	movl	%ecx, %eax
	sall	$3, %eax
	addl	%ecx, %eax
	sall	$3, %eax
	subl	%ecx, %eax
	shrw	$8, %ax
	movl	%eax, %ecx
	sarb	$4, %cl
	movl	%edx, %eax
	sarb	$7, %al
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	$58, %ecx
	imull	%ecx, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$65, %eax
	movb	%al, (%rsi)
	addq	$1, -40(%rbp)
.L10:
	cmpq	$999999, -40(%rbp)
	jle	.L11
	movl	$0, -44(%rbp)
	movl	$.LC1, %edi
	call	puts
	call	clock
	movq	%rax, -16(%rbp)
	movq	$1000000, -32(%rbp)
	jmp	.L12
.L13:
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	isUpperSTD
	movl	%eax, -44(%rbp)
.L12:
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	testq	%rax, %rax
	jne	.L13
	call	clock
	movq	%rax, -8(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC4, %edi
	call	puts
	call	clock
	movq	%rax, -16(%rbp)
	movq	$1000000, -32(%rbp)
	jmp	.L14
.L15:
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	isUpperBitwise
	movl	%eax, -44(%rbp)
.L14:
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	testq	%rax, %rax
	jne	.L15
	call	clock
	movq	%rax, -8(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC6, %edi
	call	puts
	call	clock
	movq	%rax, -16(%rbp)
	movq	$1000000, -32(%rbp)
	jmp	.L16
.L17:
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	isUpperSubtract
	movl	%eax, -44(%rbp)
.L16:
	movq	-32(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	testq	%rax, %rax
	jne	.L17
	call	clock
	movq	%rax, -8(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movq	-8(%rbp), %rax
	subq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC7, %edi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	$0, %eax
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.9) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
