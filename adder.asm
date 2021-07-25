section .data
	enterFirst db 'Enter first number: '
	lenEnterFirst equ $-enterFirst
	
	enterSecond db 'Enter second number: '
	lenEnterSecond equ $-enterSecond
	
	resMsg db 'Result: '
	lenResMsg equ $-resMsg

section .bss
	num1 resb 8
	num2 resb 8
	ans resb 16

section .text
	global _start

_start:
	mov eax, 4 ;Print first prompt
	mov ebx, 1
	mov ecx, enterFirst
	mov edx, lenEnterFirst
	int 80h

	mov eax, 3 ;Store num1
	mov ebx, 2
	mov ecx, num1
	mov edx, 5
	int 80h

