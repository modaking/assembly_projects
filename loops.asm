section data
    num1 db 0
    num2 db 0
    num3 db 9
    num4 db 2

section text
global _start

    _start:
    MOV ax, [num1]
    MOV bx, [num2]
    MOV cx, [num3]
    MOV dx, [num4]
    JMP sum_check

    sum_check:
    ADD ax, dx
    CMP bx, cx
    JE done
    DEC cx
    JMP sum_check

    done:
    MOV bx, ax         ; Move result to ebx (exit code)
    MOV eax, 1           ; Exit system call number
    INT 80h 
