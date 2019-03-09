	.global	main
	.data
	
	.data
	
memRef:	.quad	3

	.text

main:
	rdtsc
	mov	memRef,	%r12
	mov	%rax,	%r13
	nop
	rdtsc
	sub	%r13,	%rax

	xor	%rax,	%rax
	ret
