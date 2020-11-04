			global ctoi

			section .text

ctoi:		movzx	r8, Byte[rdi]
			sub		r8, 48
			mov		rax, r8
			ret
