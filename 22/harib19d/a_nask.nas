[FORMAT "WCOFF"]
[INSTRSET "i486p"]
[BITS 32]
[FILE "a_nask.nas"]

		GLOBAL	_api_putchar
		GLOBAL  _api_putstr0
		GLOBAL	_api_end

[SECTION .text]

_api_putchar:	; void api_putchar(int c);
		MOV		EDX,1
		MOV		AL,[ESP+4]
		INT		0x40
		RET



_api_putstr0:	; void api_putstr0(char *s);
	PUSH	EBX
	MOV	EDX,2
	MOV	EBX,[ESP+8]
	INT	0x40
	POP	EBX
	RET
_api_end:	; void api_end(void);
		MOV		EDX,4
		INT		0x40