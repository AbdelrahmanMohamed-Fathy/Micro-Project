	EXPORT DRAW_MONTH
	IMPORT DRAW
	AREA MYCODE, CODE, READONLY


DRAW_MONTH FUNCTION
	PUSH {R0-R12, LR}

	CMP R6, #0
	BLEQ DRAW_JAN
	
	CMP R6, #1
	BLEQ DRAW_FEB
	
	CMP R6, #2
	BLEQ DRAW_MAR
	
	CMP R6, #3
	BLEQ DRAW_APR

	CMP R6, #4
	BLEQ DRAW_MAY

	CMP R6, #5
	BLEQ DRAW_JUN

	CMP R6, #6
	BLEQ DRAW_JUL

	CMP R6, #7
	BLEQ DRAW_AUG

	CMP R6, #8
	BLEQ DRAW_SEP

	CMP R6, #9
	BLEQ DRAW_OCT

	CMP R6, #10
	BLEQ DRAW_NOV

	CMP R6, #11
	BLEQ DRAW_DEC

	POP {R0-R12, PC}
	ENDFUNC


DRAW_JAN
	PUSH {R0-R12, LR}
	MOV R2, #'J'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'a'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'n'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	POP {R0-R12, PC}

DRAW_FEB
	PUSH {R0-R12, LR}
	MOV R2, #'F'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'e'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'b'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	POP {R0-R12, PC}

DRAW_MAR
	PUSH {R0-R12, LR}
	MOV R2, #'M'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'a'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'r'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	POP {R0-R12, PC}

DRAW_APR
	PUSH {R0-R12, LR}
	MOV R2, #'A'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'p'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'r'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	POP {R0-R12, PC}

DRAW_MAY
	PUSH {R0-R12, LR}
	MOV R2, #'M'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'a'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'y'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	POP {R0-R12, PC}

DRAW_JUN
	PUSH {R0-R12, LR}
	MOV R2, #'J'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'u'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'n'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	POP {R0-R12, PC}

DRAW_JUL
	PUSH {R0-R12, LR}
	MOV R2, #'J'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'u'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'l'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	POP {R0-R12, PC}

DRAW_AUG
	PUSH {R0-R12, LR}
	MOV R2, #'A'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'u'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'g'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	POP {R0-R12, PC}

DRAW_SEP
	PUSH {R0-R12, LR}
	MOV R2, #'S'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'e'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'p'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	POP {R0-R12, PC}

DRAW_OCT
	PUSH {R0-R12, LR}
	MOV R2, #'O'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'c'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'t'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	POP {R0-R12, PC}

DRAW_NOV
	PUSH {R0-R12, LR}
	MOV R2, #'N'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'o'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'v'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	POP {R0-R12, PC}

DRAW_DEC
	PUSH {R0-R12, LR}
	MOV R2, #'D'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'e'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'c'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	POP {R0-R12, PC}

