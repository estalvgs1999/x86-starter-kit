section .data
    msg db 'Hello World!', 0Ah ; 'oAh' line feed char

section .text

global _start   ; set program entry

_start:
    mov edx, 13
    mov ecx, msg
    mov ebx, 1
    mov eax, 4  ; eax -> system calls opcode [4] => write
    int 80h     ; int -> software interrupt 
    
    mov ebx, 0  ; return 0 = Ok
    mov eax, 1  ; eax ->  system calls opcode [1] => exit
    int 80h
    
