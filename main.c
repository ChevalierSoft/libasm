#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int		ft_strlen(char *s);
int		ctoi(char *c);
char 	*ft_strcpy(char *s, char *d);

void	test_ft_strlen(void);
void	test_ft_strcpy(void);

int		main(int argc, char **argv)
{
	test_ft_strlen();
	test_ft_strcpy();
	return (0);
}

void	test_ft_strlen(void)
{
	char s[] = "abcdefgghijklmnopqrstuvwxyz";

	printf("\n_________ ft_strlen ________\n");
	printf("len :	%d\n", ft_strlen(s));
	printf("____________________________\n");
}

void	test_ft_strcpy(void)
{
	char s[] = "0123456789012345678901";
	char *d = malloc(sizeof(char) * 34);
	char *r;

	printf("\n_________ ft_strcpy ________\n");

	r = (char *)ft_strcpy(d, s);
	printf("d : [%s]|r : %s\nr : %p | %p : d\n\n", d, r, r, d);
	r = strcpy(d, s);
	printf("d : [%s]|r : %s\nr : %p | %p : d\n\n", d, r, r, d);
	r = (char *)ft_strcpy(s, d);
	printf("d : [%s]|r : %s\nr : %p | %p : s\n\n", d, r, r, s);
	r = strcpy(s, d);
	printf("d : [%s]|r : %s\nr : %p | %p : s\n\n", d, r, r, s);

	free(d);	
	printf("____________________________\n");
}

