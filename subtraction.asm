section data

num1 db 2;
num2 db 10;

section text
global _start

    _start:

    MOV al, [num2] ;

    MOV bl, [num1] ;

    SUB al, bl ;

    MOV bl, al;

    MOV al, 1;

    INT 0x80 ;