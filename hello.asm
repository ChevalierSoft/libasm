; hello.asm
;
; nasm -f macho64 hello.asm
; ld -macosx_version_min 10.7.0 -arch x86_64 hello.o -lSystem -no_pie

global start

section .text

start:
	mov		rax, 0x2000004	; write
	mov		rdi, 1			; stdout
	mov		rsi, msg
	mov		rdx, msg.len
	syscall

	mov	rax, 0x2000001		; exit
	mov	rdi, 0
	syscall

section .data

msg:	 db		"ya yeet !", 10
.len:	equ		$ - msg
