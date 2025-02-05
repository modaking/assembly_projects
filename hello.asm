section .data
    hello db "Hello, World!", 0xA  ; The message and newline
    len equ $ - hello              ; Length of the message

section .text
    global _start

_start:
    ; Write the message to stdout
    mov eax, 4          ; syscall: write
    mov ebx, 1          ; file descriptor: stdout
    mov ecx, hello      ; pointer to the message
    mov edx, len        ; message length
    int 0x80            ; call kernel

    ; Exit the program
    mov eax, 1          ; syscall: exit
    xor ebx, ebx        ; return code: 0
    int 0x80            ; call kernel

