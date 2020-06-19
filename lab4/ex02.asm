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
	L1:
		mov	edx, esi
		call WriteString
		call ReadInt
		mov ebx, OFFSET array
		add ebx, index
		mov [ebx], eax
		add index, TYPE array
		loop L1
	ret
getIntArray ENDP

printArray PROC
	mov	edx, OFFSET openBracket
	call WriteString
	mov index, 0
	mov ecx, 10
	L2:
		mov ebx, OFFSET array
		add ebx, index
		mov	eax, [ebx]
		call WriteInt
		mov	edx, OFFSET comma
		call WriteString
		add index, TYPE array
		loop L2
	mov	edx, OFFSET closeBracket
	call WriteString
	ret
printArray ENDP

END main