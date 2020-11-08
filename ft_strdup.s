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

			;mov		r15, rdi		; first registers are used by malloc
			push	rdi
			mov		rdi, rax

			call	malloc	WRT ..plt	; malloc(sizeof(len))

			;mov		rsi, r15		; rsi = s
			pop		rsi
			mov		rdi, rax
			
			mov		byte[rax], 97
			call	ft_strcpy
			ret
