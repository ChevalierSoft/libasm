			global ft_strlen

			section .text

ft_strlen:	mov		rax, 0

while:		cmp		Byte[rdi + rax], 0			; while (r8)
			je		return
			inc		rax
			jmp		while

return:		ret
