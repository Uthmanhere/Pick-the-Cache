	.global	main

	.text
main:
	mov		$5456243,	%rbx
	mov		$0015,	%r9
	mov		%r9,	(%rbx)
	mov		(%rbx),	%rax
	nop
