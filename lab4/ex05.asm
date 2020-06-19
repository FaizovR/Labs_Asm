TITLE lab4-ex05

INCLUDE Irvine32.inc

; e) Напишите программу, которая генерировала бы и отображала на экране последовательность из 50 случайных чисел. 
; Значения этих чисел должны находиться в диапазоне -20…+20.

.data

.code
main PROC
	mov ecx, 50
	L1:
		mov	eax, 41
		call RandomRange
		sub eax, 20
		call WriteInt
		loop L1
	exit
main ENDP
END main