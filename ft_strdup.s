extern malloc
extern ft_strcpy
extern ft_strlen

			global ft_strdup

			section .text

ft_strdup:
			push rdi
			call ft_strlen
			pop rdi

return:
			ret
