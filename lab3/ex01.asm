TITLE lab3-ex01

; a) Напишите программу, которая в цикле вычисляет первые семь чисел
; последовательности Фибоначчи: {1, 1, 2, 3, 5, 8, 13}.
; Каждое число нужно загрузить в регистр EAX и
; отобразить в цикле через call DumpRegs.

INCLUDE Irvine32.inc

.data

.code
main PROC
	mov ecx, 7
	mov al, 0
	mov ah, 1
L1:
	add ah, al
	xchg al, ah
	call DumpRegs 
	loop L1
	exit
main ENDP
END main
