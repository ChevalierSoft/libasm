NAME		= hello

SRCS_OSX	= hello.asm
SRCS		= hello.s

NASM_LINUX	= -felf64
LD_LINUX	= -no_pie

all :
	nasm $(NASM_LINUX) $(SRCS)
	ld $(LD_LINUX) -arch x86_64 *.o -o $(NAME)

mac :
	nasm -f macho64 osx_hello.asm
	ld -macosx_version_min 10.7.0 -arch x86_64 osx_hello.o -lSystem -no_pie

clean :
	rm hello.o

fclean : clean
	rm $(NAME)

.PHONY : all clean fclean $(NAME)
