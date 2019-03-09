	.global main

	.text
main:
	mov	$0,	%rbx
	mov	$3,	%r13
	mov	$0,	%r12
	mov	$1,	%r14

table:
	mov	$form,	%rdi
	xor	%rax,	%rax
	mov	%r12,	%rsi
	call	printf
	
	add	%r13,	%r12
	inc	%rbx
	cmp	$10,	%rbx
	jbe	table
	ret

form:
	.asciz	"%08X\n"
