
INCLUDE Irvine32.inc

.data
	symbol BYTE '#'

	
.code
main PROC
	call ClrScr
	mov ebx, 0
	mov ecx, 15
L1:
; save value
	mov edx, ecx
	mov ecx, 16
L2:	
	mov eax, ebx
	call SetTextColor
	mov al, symbol
	call WriteChar
	
	add ebx, 1 ;inc color
	
	loop L2
;end L2
	call CrLf
	mov ecx, edx

	loop L1

	mov eax, white
	call SetTextColor
	exit
main ENDP
END main