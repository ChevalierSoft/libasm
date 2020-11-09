			global ft_strcpy

			section .text

ft_strcpy:	mov		rax, 0

while:		cmp		Byte[rsi + rax], 0
			je		return

			mov		r9, [rsi + rax]
			mov		[rdi + rax], r9
			inc		rax
			jmp		while

return:		mov		Byte[rdi + rax], 0
			mov		rax, rdi
			ret

