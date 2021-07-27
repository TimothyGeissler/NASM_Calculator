CONST_NUM1 equ 5
CONST_NUM2 equ 7

section .bss
	ans resb 2

section .data
	resMsg db "Added result"
	resMsgLen equ $-resMsg

section .text
	global _start

_start:
	mov eax, 4 ;Print prompt
	mov ebx, 1
	mov ecx, resMsg
	mov edx, resMsgLen
	int 80h

	mov eax, CONST_NUM1
	sub eax, '0' ;Convert ascii to decimal
	mov ebx, CONST_NUM2
	sub ebx, '0'

	add eax, ebx
	add eax, '0' ;Convert decimal to ascii

	mov [ans], eax
	
	mov eax, 4 ;Print ans
	mov ebx, 1
	mov ecx, ans
	mov edx, 2
	int 80h

	mov eax, 1
	
