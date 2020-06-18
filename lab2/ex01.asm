TITLE lab2-ex01
; a) Напишите программу, в которой для установки и сброса
; флага переноса CF используются команды сложения и вычитания.
;  После каждой команды поместите команду call DumpRegs для 
;  отображения содержимого регистров и состояния флагов.

INCLUDE Irvine32.inc

.data
	var1 BYTE 0FFh
	var2 BYTE 00h
	
.code
main PROC
; Сброс флага CF.
	mov al, 1		
	add al, 1		; ADD - суммирование получателью,источник
	call DumpRegs	; CF = 0

; Проверка, что add устанавливают флаг CF:
	mov al, var1
	add al, 1		; ADD - суммирование получателью,источник
	call DumpRegs	; CF = 1
	
; Сброс флага CF.
	mov al, 1		
	add al, 1		; ADD - суммирование получателью,источник
	call DumpRegs	; CF = 0

; Проверка, что sub устанавливают флаг CF:
	mov al, var2
	sub al, 1		; SUB - Вычитание получателью,источник
	call DumpRegs	; CF = 1
	
	exit
main ENDP
END main