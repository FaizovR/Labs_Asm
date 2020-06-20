TITLE lab4-ex01

; a) Напишите программу, которая бы последовательно
; выводила одну и ту же строку текста четырьмя разными цветами.

; textColor + (backgrroundColor * 16)

INCLUDE Irvine32.inc

.data
	string DB "This is multicolor string!", 0
	; carriageReturn BYTE ' ', 13, 10, 0; new line

.code
main PROC
	mov ecx, 4
L1:
	mov eax, ecx
	call SetTextColor
	call println
	mov ah, 0Eh 
	LOOP L1

	exit
main ENDP

println PROC
	mov	edx, OFFSET string
	call WriteString
	call CrLf
	ret
println ENDP

END main
