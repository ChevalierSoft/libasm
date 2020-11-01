NAME		= hello

SRCS_OSX	= hello.asm
SRCS_LINUX	= hello.s

UNAME_S		= $(shell uname -s)

ifeq ($(UNAME_S), Darwin)
	OS_NASM	= -fmacho64
	OS_LD	= -macosx_version_min 10.7.0 -lSystem -no_pie 
	SRCS	= $(SRCS_OSX)
else
	OS_NASM	= -felf64
	OS_LD	= -no_pie
	SRCS	= $(SRCS_LINUX)
endif

all :
	nasm $(OS_NASM) $(SRCS)
	ld $(OS_LD) -arch x86_64 *.o -o $(NAME)

clean :
	rm hello.o

fclean : clean
	rm $(NAME)

.PHONY : all clean fclean $(NAME)
