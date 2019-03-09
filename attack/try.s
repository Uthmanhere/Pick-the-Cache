	.global main

	.text
main:
	mov	$message, %rdi
	call	puts
	ret

message:
	.asciz	"this is the state of grace"
