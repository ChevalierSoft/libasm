			global ft_write

			section .text

ft_write:
			mov		rax, 1
			syscall
			cmp		rax, 0
			jnz		error
			ret


error:
			
