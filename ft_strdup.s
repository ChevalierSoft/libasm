extern malloc
extern ft_strcpy
extern ft_strlen

extern putchar
extern strcpy

			global ft_strdup

			section .text

ft_strdup:
			call	ft_strlen
			inc		rax					; rax = len

			;mov		rdx, rdi			; rdx = &s1
			push	rdi
			mov		rdi, rax			; rdi = len

			call	malloc	WRT ..plt	; malloc(sizeof(len))

			;mov		rsi, rdx			; s2 = s
			pop		rsi
			mov		rdi, rax			; s1 = pt
			
			;call	strcpy	WRT ..plt
			mov		byte[rax], 97

			;push	rsi
			;push	rdi
			call	ft_strcpy
			;pop		rdi
			;pop		rsi
			;mov		rax, rdi	
			ret
