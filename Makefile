NAME	= hello

all :
	nasm -f macho64 hello.asm
	ld -macosx_version_min 10.7.0 -arch x86_64 -lSystem -no_pie hello.o -o $(NAME)

clean :
	rm hello.o

fclean : clean
	rm $(NAME)

.PHONY : all clean fclean $(NAME)
