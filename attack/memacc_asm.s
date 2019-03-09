	.data
	.comm	num,	80

	.text
	.global main

main:
	movq	$15,	%r13
array_loop:
	movq	%r13,	num
	inc		%r13
	rdtsc
	movq	%rax,	%r14
	movq	num,	%r12
	rdtsc
	sub		%r14,	%rax

	mov		$ref2,	%rdi
	mov		%rax,	%rsi
	xor		%rax,	%rax	
	call	printf
	
	mov		$ref,	%rdi
	mov		%r12,	%rsi
	xor		%rax,	%rax	
	call	printf

	cmp		$25,	%r13
	jbe		array_loop
	



	xor		%rax,	%rax
	ret

ref:
	.asciz	"%08X\n"
ref2:
	.asciz	"t: %08X\n"
