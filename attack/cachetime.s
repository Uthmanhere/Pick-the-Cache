	.file	"cachetime.c"
	.comm	array,40960,32
	.section	.rodata
	.align 8
.LC0:
	.string	"Access time for array[%d*4096]: %d CPU cycles\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -52(%rbp)
	jmp	.L2
.L3:
	movl	-52(%rbp), %eax
	sall	$12, %eax
	cltq
	movb	$1, array(%rax)
	addl	$1, -52(%rbp)
.L2:
	cmpl	$9, -52(%rbp)
	jle	.L3
	movl	$0, -52(%rbp)
	jmp	.L4
.L5:
	movl	-52(%rbp), %eax
	sall	$12, %eax
	cltq
	addq	$array, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	clflush	(%rax)
	addl	$1, -52(%rbp)
.L4:
	cmpl	$9, -52(%rbp)
	jle	.L5
	movb	$100, array+12288(%rip)
	movb	$-56, array+28672(%rip)
	movl	$0, -52(%rbp)
	jmp	.L6
.L9:
	movl	-52(%rbp), %eax
	sall	$12, %eax
	cltq
	addq	$array, %rax
	movq	%rax, -48(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, -32(%rbp)
	rdtscp
	movl	%ecx, %esi
	movq	-32(%rbp), %rcx
	movl	%esi, (%rcx)
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, %rbx
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, -56(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	rdtscp
	movl	%ecx, %esi
	movq	-24(%rbp), %rcx
	movl	%esi, (%rcx)
	salq	$32, %rdx
	orq	%rdx, %rax
	subq	%rbx, %rax
	movq	%rax, %rbx
	movl	%ebx, %edx
	movl	-52(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -52(%rbp)
.L6:
	cmpl	$9, -52(%rbp)
	jle	.L9
	movl	$0, %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE522:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.4) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
