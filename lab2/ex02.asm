TITLE lab2-ex02

; b) Напишите программу, которая позволит убедится, 
; что команды INC и DEC не влияют на состояние флага CF.

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
;проверка что команды INC не влияют на состояние флага CF.
	mov al, var1
	inc al			; инкремент
	call DumpRegs	; CF = 0
; Сброс флага CF.
	mov al, 1		
	add al, 1		; ADD - суммирование получателью,источник
	call DumpRegs	; CF = 0

; что команды DEC не влияют на состояние флага CF.
	mov al, var2
	dec al			; декримент
	call DumpRegs	; CF = 0
	
	exit
main ENDP
END main