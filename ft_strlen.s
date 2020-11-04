			global ft_strlen

			section .text

ft_strlen:	mov		rax, 0
			movzx	r8, Byte[rdi]	; return (rax)

while:		cmp		r8, 0			; while (r8)
			je		return
			inc		rax
			movzx	r8, Byte[rdi + rax]
			jmp		while

return:		ret
