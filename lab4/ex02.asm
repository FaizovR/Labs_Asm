TITLE lab4-ex02

INCLUDE Irvine32.inc

; b) Напишите программу, которая в цикле вводит с клавиатуры
; десять 32-разрядных целых чисел со знаком, сохраняет их в массиве,
; а затем выводит на экран значение элементов этого массива.

.data
	array SDWORD 10 DUP(0)
	openBracket DB "Array = {", 0
	closeBracket BYTE "}", 0
	comma BYTE ", ", 0
	input_message DB "Enter a number: ", 0
	index DWORD 0

.code
main PROC
	call getIntArray
	call printArray
	exit
main ENDP

getIntArray PROC 
	mov ecx, 10
	mov esi, OFFSET input_message
	mov ebx, OFFSET array	;0
L1:
	call WriteString
	call ReadInt
	mov [ebx], eax
	add ebx, 4
	loop L1

	ret
getIntArray ENDP

printArray PROC
	mov	edx, OFFSET openBracket
	call WriteString
	mov ecx, 10
	mov ebx, OFFSET array
	mov	edx, OFFSET comma
L2:
	mov	eax, [ebx]
	call WriteInt
	call WriteString
	add ebx, 4
	loop L2
	
	mov	edx, OFFSET closeBracket
	call WriteString
	ret
printArray ENDP

END main