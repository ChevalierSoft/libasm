extern malloc
extern ft_strcpy
extern ft_strlen
extern putchar

			global ft_strdup

			section .text

ft_strdup:
			call	ft_strlen
			inc		rax					; rx = len
			;;push	rax

			mov		r9, rdi				; r9 = &s1
			mov		rdi, rax

			call	malloc	WRT ..plt	; malloc(sizeof(arg[1]))

			;;pop		rdi
			;mov		rdi, rdx			; s2 = pt
			;mov		rsi, r9				; s1 = r9
			
			;push	rsi
			;push	rdi
			;call	ft_strcpy
			;pop		rdi
			;pop		rsi
			
			ret
