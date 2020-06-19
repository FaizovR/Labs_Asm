TITLE lab3-ex07

INCLUDE Irvine32.inc

; g) Напишите программу, которая бы выводила один символ в 100 случайных мест экран.
; Задержка между выводом символов должна изменяться случайным образом в диапазоне 10…300 мс.

.data

.code
main PROC
	call Randomize
	call ClrScr
	mov ecx, 100
	L1:
		call setRandomCoords
		call printRandomChar
		call setRandomDelay
		loop L1
	exit
main ENDP

printRandomChar PROC
	mov	eax, 26
	call RandomRange
	add al, 65
	call WriteChar
	ret
printRandomChar ENDP

setRandomCoords PROC
	mov	eax, 15
	call RandomRange
	mov dh, al
	mov	eax, 160
	call RandomRange
	mov dl, al
	call GotoXY
setRandomCoords ENDP

setRandomDelay PROC
	mov	eax, 291
	call RandomRange
	add eax, 10
	call Delay
	ret
setRandomDelay ENDP

END main