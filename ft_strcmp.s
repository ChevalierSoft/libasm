			global ft_strcmp

			section .text

ft_strcmp:	mov		rax, 0				; res  = 0

while:
			cmp		Byte[rdi + rax], 0	; *s1
			je		return
			cmp		Byte[rsi + rax], 0	; *s2
			je		return
			mov		r8b, [rdi + rax]
			sub		r8b, [rsi + rax]
			jne		return				; (*s1 - *s2) != 0

			inc		rax					; rax++
			jmp		while				; }

return:		movzx	r8, Byte[rdi + rax]; r9b = *(rdi + rax)
			movzx	r9, Byte[rsi + rax]
			sub		r8, r9
			mov		rax, r8
			ret
