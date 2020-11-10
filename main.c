#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <unistd.h>
#include <fcntl.h>

#define READ(x, y, z) ft_read(x, y, z)
//#define READ(x, y, z) read(x, y, z)

#define WRITE(x, y, z) ft_write(x, y, z)
//#define WRITE(x, y, z) write(x, y, z)

int		ft_strlen(char *s);
int		ctoi(char *c);
char 	*ft_strcpy(char *s, char *d);
int		ft_strcmp(const char *s1, const char *s2);
char	*ft_strdup(char *s);
void	ft_write(int fd, const void *buf, size_t count);
ssize_t	ft_read(int fd, void *buf, size_t count);

void	test_ft_strcmp(void);
void	test_ft_strlen(void);
void	test_ft_strcpy(void);
void	test_ft_strdup(void);
void	test_write(void);
void	test_read(void);
void	display_file(char *file_name);

int		main(int argc, char **argv)
{
	//test_ft_strlen();
	//test_ft_strcpy();
	//test_ft_strcmp();
	//test_ft_strdup();
	//test_write();
	//test_read();
	display_file("ft_strlen.s");
	//display_file("m.c");
	return (0);
}

void	display_file(char *file_name)
{
	int fd;
	char buf[1];

	fd = open(file_name, O_RDONLY);	
	while (READ(fd, buf, 1) > 0)
	{
		WRITE(1, buf, 1);
	}
	perror("real_file");
	close(fd);
}

void test_read(void)
{
	char buf[12];

	memset(buf, 0, 12);
	errno = 0;
	ft_read(0, buf, 4);
	printf("%s", buf);
}

void	test_write(void)
{
	errno = 0;
	ft_write(6, "lolilol\n", 7);
	perror("ft_write ");

	errno = 0;
	write(6, "lolilol\n", 7);
	perror("write ");
}


void	test_ft_strdup(void)
{
	char *pt;

	pt = ft_strdup("bbb");
	printf("[%s] | %p\n", pt, pt);
	free(pt);

	pt = ft_strdup("abcdefghijklmnopqrstuvwxyz");
	printf("[%s] | %p\n", pt, pt);
	free(pt);

	pt = ft_strdup("");
	printf("[%s] | %p\n", pt, pt);
	free(pt);

	pt = ft_strdup("abcdefghijklmnopqrstuvwxyz01234567890123456789012345678901234567890123456789012345678901234567890");
	printf("[%s] | %p\n", pt, pt);
	free(pt);
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

	printf("ft_strcmp : %d\n", ft_strcmp(s1, s4));
	printf("strcmp    : %d\n",    strcmp(s1, s4));

	printf("ft_strcmp : %d\n", ft_strcmp(s4, s1));
	printf("strcmp    : %d\n",    strcmp(s4, s1));
	printf("____________________________\n");
}

void	test_ft_strlen(void)
{
	printf("\n_________ ft_strlen ________\n");
	printf("len 1 :	%d\n", ft_strlen("abcdefghijklmnopqrstuvwxyz"));
	printf("len 2 :	%d\n", ft_strlen("yay"));
	printf("len 2 :	%d\n", ft_strlen(""));
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

