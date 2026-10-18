; Hello World in x86 ASM

global _start

section .text:

_start:
	mov eax, 0x4 		; "write" syscall
	mov ecx, 1 		; std out as fd
	mov ecx, msg	 	; message as buff
	mov edx, msg_len	; give msg lenght
	int 0x80		; invoke syscall
	
	; exit the programm	

	mov eax, 0x1
	mov ebx, 0
	int 0x80

section .data:
	msg: db "Hello World!", 0xA ; 0xA is hexcode for '\n' btw
	msg_len equ $-msg
