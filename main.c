#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int		ft_strlen(char *s);
int		ctoi(char *c);
char 	*ft_strcpy(char *s, char *d);
int		ft_strcmp(const char *s1, const char *s2);

void	test_ft_strcmp(void);
void	test_ft_strlen(void);
void	test_ft_strcpy(void);

int		main(int argc, char **argv)
{
	//test_ft_strlen();
	//test_ft_strcpy();
	test_ft_strcmp();
	return (0);
}

void	test_ft_strcmp(void)
{
	char s1[] = "012345678901234567890123456789";
	char s2[] = "123";
	char s3[] = "";
	char s4[] = "01234";

	printf("\n_________ ft_strcmp ________\n");
	printf("ft_strcmp : %d\n", ft_strcmp(s1, s1));
	printf("strcmp    : %d\n",    strcmp(s1, s1));

	printf("ft_strcmp : %d\n", ft_strcmp(s1, s2));
	printf("strcmp    : %d\n",    strcmp(s1, s2));

	printf("ft_strcmp : %d\n", ft_strcmp(s2, s1));
	printf("strcmp    : %d\n",    strcmp(s2, s1));

	printf("ft_strcmp : %d\n", ft_strcmp(s1, s3));
	printf("strcmp    : %d\n",    strcmp(s1, s3));

	printf("ft_strcmp : %d\n", ft_strcmp(s4, s1));
	printf("strcmp    : %d\n",    strcmp(s4, s1));
	printf("____________________________\n");
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

