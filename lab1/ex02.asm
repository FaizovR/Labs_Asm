TITLE 2lab			(AddSub.asm)

INCLUDE Irvine32.inc

.data 
val1	BYTE	'A'
val2	SBYTE	'B'
val3	WORD	65535
val4	SWORD	-32768
val5	DWORD	4294967295
val6	SDWORD	2147483648
val7	FWORD	0FFFFFFFFFFFFh
val8	QWORD	18446744073709551615
val9	TBYTE	0FFFFFFFFFFFFFFFFFFFFh
val10	REAL4	-2.1
Val11	REAL8	2.2E-260
Val12	REAL10	4.6E+4096


.code
main PROC
	call	DumpRegs

	exit
main ENDP
END main