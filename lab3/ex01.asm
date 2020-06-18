TITLE lab3-ex01

; a) Напишите программу, которая в цикле вычисляет первые семь чисел
; последовательности Фибоначчи: {1, 1, 2, 3, 5, 8, 13}.
; Каждое число нужно загрузить в регистр EAX и
; отобразить в цикле через call DumpRegs.
INCLUDE Irvine32.inc

.data
	var1 DWORD 0
	var2 DWORD 1

.code
main PROC
	mov ax, 0
	mov ecx, 7	; Вычисление первых 7 чисел.
	L1:
		mov eax, var1
		add eax, var2
		call DumpRegs
		mov var1, eax
		sub eax, var2
		mov var2, eax
		inc ax
		loop L1
	exit
main ENDP
END main