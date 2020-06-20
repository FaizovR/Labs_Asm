TITLE lab2-ex04

INCLUDE Irvine32.inc

; Напишите программу, в которой для установки 
; и сброса флага переполнения OF
; используются команды сложения и вычитания.

.data
	var1 SBYTE +127
	var2 SBYTE -128

.code
main PROC
; reset OF
	add al, 1
	call DumpRegs	; OF = 0

; check OF
	mov al, var1
	add al, 1
	call DumpRegs	; OF = 1

; reset OF
	add al, 1
	call DumpRegs	; OF = 0

; check OF
	mov al, var2
	sub al, 1
	call DumpRegs	; OF = 1

	exit
main ENDP
END main