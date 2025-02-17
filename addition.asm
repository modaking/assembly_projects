section data

    num1 db 1 
    num2 db 5

section section

global _start

    _start:

    MOV al, [num1] ;

    MOV bl, [num2] ;

    ADD al, bl   ;

    MOV bl, al   ;

    MOV eax, 1   ;

    INT 0x80   ;