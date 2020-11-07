extern malloc
extern ft_strcpy
extern ft_strlen

			global ft_strdup

			section .text

ft_strdup:
			call	ft_strlen
			mov		r8, rdx
			inc		r8					; r8 = len
			mov		r9, rdi				; r9 = &s1
			mov		rdi, r8				; rdi = arg[1] = len
			call	malloc WRT ..plt	; malloc(sizeof(arg[1]))
			mov		rdi, r9				; s1 = r9
			mov		rsi, rdx			; s2 = pt
			call	ft_strcpy
			ret
