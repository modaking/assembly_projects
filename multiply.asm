section data
    num1 DD 5

    num2 DD 6

section text
global _start

    _start:

    MOV ax, [num1] ;
    MOV bx, [num2] ;

    MUL bx   ;

    MOV bx, ax ;

    MOV ax, 1 ;

    INT 0x80 ;

