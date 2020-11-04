			global ft_strcpy

			section .text

ft_strcpy:	mov		rax, 0

while:		cmp		Byte[rdi + rax], 0
			je		return

			mov		r9, [rdi + rax]
			mov		[rsi + rax], r9
			inc		rax
			jmp		while

return:		mov		Byte[rsi + rax], 0
			ret
