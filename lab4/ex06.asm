TITLE lab4-ex06

INCLUDE Irvine32.inc

; f) Напишите программу, которая бы генерировала и отображала на экране последовательность из 20 случайных строк.
; Каждая строка должна состоять из 10 прописных букв, находящихся в диапазоне {A…Z}.

.data
	string DB 11 DUP(0)
	
.code
main PROC
	call Randomize
	mov ecx, 20

L1:
	call getString
	call println
	loop L1

	exit
main ENDP

getString PROC
	mov edx, OFFSET string
	mov ebx, ecx
	mov ecx, 10

L2:
	mov	eax, 26
	call RandomRange
	add eax, 65
	mov	[edx], eax
	add edx, 1
	loop L2

	mov ecx, ebx
	ret
getString ENDP

println PROC
	mov	edx, OFFSET string
	call WriteString
	call CrLf
	ret
println ENDP

END main