TITLE lab3-ex03

; c) Напишите программу, которая очищает экран и перемещает курсор в его середину,
;  запрашивает у пользователя два целых числа, складывает их и отображает полученную сумму на экране.

INCLUDE Irvine32.inc

.data
	plus BYTE "+", 0
	equal BYTE "=", 0
	num1 SDWORD ?
	num2 SDWORD ?

.code
main PROC
	call sumDigits
	exit
main ENDP

sumDigits PROC
	call ClrScr
	mov dh, 7
	mov dl, 50
	call GotoXY
	call ReadInt
	mov [num1], eax
	mov dh, 8
	mov dl, 50
	call GotoXY
	mov	edx, OFFSET plus
	call WriteString
	mov dh, 9
	mov dl, 50
	call GotoXY
	call ReadInt
	mov [num2], eax
	mov dh, 10
	mov dl, 50
	call GotoXY
	mov	edx, OFFSET equal
	call WriteString
	mov dh, 11
	mov dl, 50
	call GotoXY
	mov eax, num1
	add eax, num2
	call WriteInt
	ret
sumDigits ENDP

END main