			global ft_strcmp

			section .text

ft_strcmp:	mov		rax, 0				; res -> rax

while:
			cmp		Byte[rdi + rax], 0	; *s1
			je		last

			cmp		Byte[rsi + rax], 0	; *s2
			je		last

			mov		r8b, [rdi + rax]
			sub		r8b, [rsi + rax]
			jne		return				; (*s1 - *s2) != 0

			inc		rax					; rax++
			jmp		while				; }

return:		movzx	rax, r8b
			ret

last:		mov		r9b, Byte[rdi + rax]
			sub		r9b, [rsi + rax]
			movzx	rax, r9b
			ret

last2:		movzx	rax, Byte[rdi + rax]
			sub		rax, [rsi + rax]
			ret
