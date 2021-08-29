; file: helloworld.asm
; author: @estalvgs1999
; about: Hello world program in assembly x86_64
; ______________________________________________

section .data
	msg db 'Hello World!',0Ah	; '0Ah' line feed character

section .text
global _start

_start:
	mov edx, 13
	mov ecx, msg
	mov ebx, 1	; write to STDOUT file
	mov eax, 4	; eax -> syscall opcode [4] -> WRITE
	int 80h		; int -> software interrupt

; _______________________________________________
; [warning] : Program output is a segmentation
;	      fault error.
; _______________________________________________
