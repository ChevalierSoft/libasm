extern malloc
extern ft_strcpy
extern ft_strlen

			global ft_strdup

			section .text

ft_strdup:
			call	ft_strlen
			inc		rax
			push	rdi
			mov		rdi, rax
			call	malloc	WRT ..plt
			pop		rsi
			mov		rdi, rax
			call	ft_strcpy
			ret
