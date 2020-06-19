TITLE lab5-cppcode

; Реализуйте на языке ассемблера приведённый ниже фрагмент
; программы на языке C++, воспользовавшись директивами создания
; блочных структур .IF и .WHILE. Считайте, что все переменные 
; являются 32-разрядными и имеют целый тип со знаком.

; while (op1 < op2) {
;	op1++;
;	if (op2 == op3) {
;		x = 2;
;	} else {
;		x = 3;
;	}
;}

INCLUDE Irvine32.inc

.data
	x	SDWORD 1
	op1	SDWORD 2
	op2	SDWORD 3
	op3	SDWORD 4

.code
main PROC
	mov eax, op1
	mov ebx, op2
	mov ecx, op3
	mov edx, x
	.WHILE eax < ebx
		add eax, 1
		.IF ebx == ecx
			mov edx, 2
		.ELSE
			mov edx, 3
		.ENDIF
	.ENDW
	mov op1, eax
	mov op2, ebx
	mov op3, ecx
	mov x, edx
	call DumpRegs
	call crlf
	exit
main ENDP
END main