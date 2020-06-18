TITLE lab2-ex03

INCLUDE Irvine32.inc

; Напишите программу, в которой для установки
; и сброса флагов нуля ZF и знака SF
; используются команды сложения и вычитания.

.code
main PROC
; Сброс флага ZF:
	mov al, 0
	add al, 1		; ADD - суммирование получателью,источник
	call DumpRegs	; ZF = 0
	
; Установка ZF:
	mov al, +1
	add al, -1		; ADD - суммирование получателью,источник
	call DumpRegs	; ZF = 1
	
; Сброс ZF:
	mov al, 0
	add al, 1		; ADD - суммирование получателью,источник
	call DumpRegs	; ZF = 0
	
; Установка ZF:
	mov al, 1
	sub al, 1		; SUB - Вычитание получателью,источник
	call DumpRegs	; ZF = 1

; Сброс SF:
	mov al, 1
	add al, 1
	call DumpRegs	; SF = 0
	
; Установка SF:
	mov al, 0
	add al, -1
	call DumpRegs	; SF = 1
	
; Сброс SF:
	mov al, 1
	add al, 1
	call DumpRegs	; SF = 0
	
; Установка SF:
	mov al, 0
	sub al, 1
	call DumpRegs	; SF = 1
	
	exit
main ENDP
END main