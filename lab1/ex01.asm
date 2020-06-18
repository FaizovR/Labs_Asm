TITLE 1lab			(AddSub.asm)

INCLUDE Irvine32.inc

.data 
firstVal	SWORD	2444
val1		SWORD	54
val2		SWORD	123
val3		SWORD	234
finalVal	SWORD	?

.code
main PROC 
	mov		ax, firstVal
	sub		ax, val1
	call	DumpRegs
	sub		ax, val2
	call	DumpRegs
	sub		ax, val3
	mov		finalVal, ax
	call	DumpRegs

	exit
main ENDP
END main
