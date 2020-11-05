			global ft_strcmp

			section .text

ft_strcmp:	mov		rax, 0

while:
			cmp		Byte[rdi + rax], 0
			je		last
			mov		r8b, [rdi + rax]
			sub		r8b, [rsi + rax]
			jne		return
			inc		rax
			jmp		while


return:		movzx	rax, r8b
			ret

last:		mov		rax, [rdi + rax]
			sub		rax, [rsi + rax]
			ret
