	.global main

	.text

main:
	mov	$1,	%rax
	mov	$14,	%rbx
	add	%rax,	%rbx

	mov	$ref,	%rdi
	mov	%rbx,	%rsi
	xor	%rax,	%rax
	call	printf

	ret

ref:
	.asciz	"%08X\n"
