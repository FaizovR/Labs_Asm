TITLE lab3-ex02

; b) Напишите программу, вычисляющую значение следующего арифметического выражения:
; EAX = -val2 + 7 - val3 + val1
; Воспользуйтесь приведёнными ниже операторами определения данных:
; val1   SDWORD    8
; val2   SDWORD  -15
; val3   SDWORD   20

INCLUDE Irvine32.inc

.data
	val1 SDWORD 8
	val2 SDWORD -15
	val3 SDWORD 20

.code
main PROC
	mov eax, val2
	neg eax
	add eax, 7
	sub eax, val3
	add eax, val1
	call DumpRegs
	exit
main ENDP
END main