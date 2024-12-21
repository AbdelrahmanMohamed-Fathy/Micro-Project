Char_small_size_x	EQU 15
	EXPORT DRAW_MONTH
	IMPORT DRAW
	AREA MYCODE, CODE, READONLY


DRAW_DAY FUNCTION
	PUSH {R0-R12, LR}

	CMP R8, #0
	BLEQ DRAW_MON
	
	CMP R8, #1
	BLEQ DRAW_TUE
	
	CMP R8, #2
	BLEQ DRAW_WED
	
	CMP R8, #3
	BLEQ DRAW_THU

	CMP R8, #4
	BLEQ DRAW_FRI

	CMP R8, #5
	BLEQ DRAW_SAT

	CMP R8, #6
	BLEQ DRAW_SUN

	POP {R0-R12, PC}
	ENDFUNC

DRAW_MON
	PUSH {R0-R12, LR}
	MOV R2, #'M'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'o'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'n'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	POP {R0-R12, PC}

DRAW_TUE
	PUSH {R0-R12, LR}
	MOV R2, #'T'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'u'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'e'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	POP {R0-R12, PC}

DRAW_WED
	PUSH {R0-R12, LR}
	MOV R2, #'W'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'e'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'d'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	POP {R0-R12, PC}

DRAW_THU
	PUSH {R0-R12, LR}
	MOV R2, #'T'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'h'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'u'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	POP {R0-R12, PC}

DRAW_FRI
	PUSH {R0-R12, LR}
	MOV R2, #'F'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'r'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'i'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	POP {R0-R12, PC}

DRAW_SAT
	PUSH {R0-R12, LR}
	MOV R2, #'S'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'a'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'t'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	POP {R0-R12, PC}

DRAW_SUN
	PUSH {R0-R12, LR}
	MOV R2, #'S'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'u'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'n'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	POP {R0-R12, PC}

