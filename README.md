# libasm
simple library in assembly doing some libc basic functions


# intel 64bit

les six premiers parametres entier sont passes aux fonctions par :
f ( rdi , rsi , rdx , rcx , r8 , r9 );

les flotants a xmm0, ..., xmm7 et le retour se fait dans xmm0

return (rax)

good doc :

- https://courses.cs.washington.edu/courses/cse378/10au/sections/Section1_recap.pdf

- http://www.lacl.fr/tan/asm

