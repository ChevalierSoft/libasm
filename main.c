#include <stdio.h>

int		ft_strlen(char *s);
int		ctoi(char *c);

int		main(void)
{
	char s[] = "123456789";

	printf("len  : %d\n", ft_strlen(s));
	printf("ctoi : %d\n", ctoi(s));
	return (0);
}
