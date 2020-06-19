TITLE lab3-ex04

; d) Воспользуйтесь циклом и заставьте программу повторить три раза выполняемые действия.
;  В конце выполнения каждого цикла не забудьте очистить экран.

INCLUDE Irvine32.inc

.data
	plus BYTE "+", 0
	equal BYTE "=", 0
	num1 SDWORD ?
	num2 SDWORD ?

.code
main PROC
	mov ecx, 3
L1:
	call sumDigits
	call ReadChar
	loop L1
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