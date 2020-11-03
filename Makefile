NAME		= libasm.a

OBJS		= $(SRCS:.s=.o)

SRCS		= ft_strlen.s

NASM_LINUX	= -f elf64
LD_LINUX	= -no_pie

# -lc for extern libraries if used
# strip and sstrip compress the exrcutable

all : $(NAME)

$(NAME) : $(OBJS)
	ar -rcs $(NAME) $(OBJS)
	gcc -o test main.c -L ./ -lasm
		
%.o : %.s
	nasm $(NASM_LINUX) -s -o $@ $<

#ld $(LD_LINUX) -arch x86_64 *.o -o $(NAME)

mac :
	nasm -f macho64 osx_hello.asm
	ld -macosx_version_min 10.7.0 -arch x86_64 osx_hello.o -lSystem -no_pie

clean :
	rm -f $(OBJS)

fclean : clean
	rm -f $(NAME)

.PHONY : all clean fclean $(NAME)
