	

	IMPORT DRAW_RECTANGLE_FILLED
	
	EXPORT DRAW
	
	
	AREA MYCODE, CODE, READONLY
		



DRAW FUNCTION
	; Draws ASCII character in R2 starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R2: ASCII character
	; R10: color
	PUSH {R0-R10,LR}
	
	CMP R2, #97
	BLEQ DRAW_A
	
	CMP R2, #98
	BLEQ DRAW_B
	
	CMP R2, #99
	BLEQ DRAW_C
	
	CMP R2, #100
	BLEQ DRAW_D
	
	CMP R2, #101
	BLEQ DRAW_E
	
	CMP R2, #102
	BLEQ DRAW_F
	
	CMP R2, #103
	BLEQ DRAW_G
	
	CMP R2, #104
	BLEQ DRAW_H
	
	CMP R2, #105
	BLEQ DRAW_I
	
	CMP R2, #106
	BLEQ DRAW_J
	
	CMP R2, #107
	BLEQ DRAW_K
	
	CMP R2, #108
	BLEQ DRAW_L
	
	CMP R2, #109
	BLEQ DRAW_M
	
	CMP R2, #110
	BLEQ DRAW_N
	
	CMP R2, #111
	BLEQ DRAW_O
	
	CMP R2, #112
	BLEQ DRAW_P
	
	CMP R2, #113
	BLEQ DRAW_Q
	
	CMP R2, #114
	BLEQ DRAW_R
	
	CMP R2, #115
	BLEQ DRAW_S
	
	CMP R2, #116
	BLEQ DRAW_T
	
	CMP R2, #117
	BLEQ DRAW_U
	
	CMP R2, #118
	BLEQ DRAW_V
	
	CMP R2, #119
	BLEQ DRAW_W
	
	CMP R2, #120
	BLEQ DRAW_X
	
	CMP R2, #121
	BLEQ DRAW_Y
	
	CMP R2, #122
	BLEQ DRAW_Z
	
	CMP R2, #65
	BLEQ DRAW_A_UPPER
	
	CMP R2, #66
	BLEQ DRAW_B_UPPER
	
	CMP R2, #67
	BLEQ DRAW_C_UPPER
	
	CMP R2, #68
	BLEQ DRAW_D_UPPER
	
	CMP R2, #69
	BLEQ DRAW_E_UPPER
	
	CMP R2, #70
	BLEQ DRAW_F_UPPER
	
	CMP R2, #71
	BLEQ DRAW_G_UPPER
	
	CMP R2, #72
	BLEQ DRAW_H_UPPER
	
	CMP R2, #73
	BLEQ DRAW_I_UPPER
	
	CMP R2, #74
	BLEQ DRAW_J_UPPER
	
	CMP R2, #75
	BLEQ DRAW_K_UPPER
	
	CMP R2, #76
	BLEQ DRAW_L_UPPER
	
	CMP R2, #77
	BLEQ DRAW_M_UPPER
	
	CMP R2, #78
	BLEQ DRAW_N_UPPER
	
	CMP R2, #79
	BLEQ DRAW_O_UPPER
	
	CMP R2, #80
	BLEQ DRAW_P_UPPER
	
	CMP R2, #81
	BLEQ DRAW_Q_UPPER
	
	CMP R2, #82
	BLEQ DRAW_R_UPPER
	
	CMP R2, #83
	BLEQ DRAW_S_UPPER
	
	CMP R2, #84
	BLEQ DRAW_T_UPPER
	
	CMP R2, #85
	BLEQ DRAW_U_UPPER
	
	CMP R2, #86
	BLEQ DRAW_V_UPPER
	
	CMP R2, #87
	BLEQ DRAW_W_UPPER
	
	CMP R2, #88
	BLEQ DRAW_X_UPPER
	
	CMP R2, #89
	BLEQ DRAW_Y_UPPER
	
	CMP R2, #90
	BLEQ DRAW_Z_UPPER
	
	CMP R2, #48
	BLEQ DRAW_0
	
	CMP R2, #49
	BLEQ DRAW_1
	
	CMP R2, #50
	BLEQ DRAW_2
	
	CMP R2, #51
	BLEQ DRAW_3
	
	CMP R2, #52
	BLEQ DRAW_4
	
	CMP R2, #53
	BLEQ DRAW_5
	
	CMP R2, #54
	BLEQ DRAW_6
	
	CMP R2, #55
	BLEQ DRAW_7
	
	CMP R2, #56
	BLEQ DRAW_8
	
	CMP R2, #57
	BLEQ DRAW_9




	POP {R0-R10,PC}
	ENDFUNC
		
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
DRAW_0
	; Draws '0' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #3
	ADD R1, R6, #6
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #6
	ADD R3, R5, #5
	ADD R4, R6, #10
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #6
	ADD R3, R5, #10
	ADD R4, R6, #9
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #7
	ADD R3, R5, #4
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #7
	ADD R3, R5, #11
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #9
	ADD R3, R5, #4
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #9
	ADD R3, R5, #12
	ADD R4, R6, #11
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #11
	ADD R3, R5, #7
	ADD R4, R6, #16
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #11
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #11
	ADD R3, R5, #12
	ADD R4, R6, #18
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #12
	ADD R3, R5, #8
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #13
	ADD R3, R5, #12
	ADD R4, R6, #14
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #15
	ADD R3, R5, #8
	ADD R4, R6, #16
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #16
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #17
	ADD R3, R5, #5
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #18
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_1
	; Draws '1' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #2
	ADD R1, R6, #6
	ADD R3, R5, #4
	ADD R4, R6, #10
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #6
	ADD R3, R5, #8
	ADD R4, R6, #9
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #9
	ADD R3, R5, #8
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #19
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_2
	; Draws '2' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #2
	ADD R1, R6, #6
	ADD R3, R5, #4
	ADD R4, R6, #10
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #6
	ADD R3, R5, #10
	ADD R4, R6, #9
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #7
	ADD R3, R5, #4
	ADD R4, R6, #10
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #7
	ADD R3, R5, #11
	ADD R4, R6, #14
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #9
	ADD R3, R5, #9
	ADD R4, R6, #17
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #9
	ADD R3, R5, #10
	ADD R4, R6, #16
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #13
	ADD R3, R5, #8
	ADD R4, R6, #18
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #14
	ADD R3, R5, #8
	ADD R4, R6, #18
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #15
	ADD R3, R5, #6
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #16
	ADD R3, R5, #6
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #17
	ADD R3, R5, #6
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #18
	ADD R3, R5, #6
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #19
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_3
	; Draws '3' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #2
	ADD R1, R6, #6
	ADD R3, R5, #4
	ADD R4, R6, #10
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #6
	ADD R3, R5, #10
	ADD R4, R6, #9
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #7
	ADD R3, R5, #11
	ADD R4, R6, #9
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #9
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #9
	ADD R3, R5, #11
	ADD R4, R6, #12
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #11
	ADD R3, R5, #10
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #3
	ADD R1, R6, #12
	ADD R3, R5, #10
	ADD R4, R6, #14
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #13
	ADD R3, R5, #11
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #14
	ADD R3, R5, #11
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #15
	ADD R3, R5, #12
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #18
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_4
	; Draws '4' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #2
	ADD R1, R6, #6
	ADD R3, R5, #4
	ADD R4, R6, #18
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #6
	ADD R3, R5, #5
	ADD R4, R6, #14
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #6
	ADD R3, R5, #6
	ADD R4, R6, #9
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #6
	ADD R3, R5, #11
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #11
	ADD R3, R5, #4
	ADD R4, R6, #18
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #16
	ADD R3, R5, #13
	ADD R4, R6, #18
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #0
	ADD R1, R6, #17
	ADD R3, R5, #13
	ADD R4, R6, #18
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_5
	; Draws '5' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #2
	ADD R1, R6, #6
	ADD R3, R5, #5
	ADD R4, R6, #14
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #6
	ADD R3, R5, #11
	ADD R4, R6, #8
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #11
	ADD R3, R5, #10
	ADD R4, R6, #14
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #12
	ADD R3, R5, #11
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #13
	ADD R3, R5, #12
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #14
	ADD R3, R5, #12
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #15
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #16
	ADD R3, R5, #4
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #17
	ADD R3, R5, #5
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #17
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #18
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #19
	ADD R3, R5, #11
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #3
	ADD R1, R6, #20
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_6
	; Draws '6' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #5
	ADD R1, R6, #6
	ADD R3, R5, #6
	ADD R4, R6, #14
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #6
	ADD R3, R5, #7
	ADD R4, R6, #10
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #6
	ADD R3, R5, #11
	ADD R4, R6, #9
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #7
	ADD R3, R5, #5
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #3
	ADD R1, R6, #8
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #9
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #11
	ADD R3, R5, #4
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #11
	ADD R3, R5, #10
	ADD R4, R6, #14
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #12
	ADD R3, R5, #11
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #13
	ADD R3, R5, #12
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #14
	ADD R3, R5, #12
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #15
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #17
	ADD R3, R5, #5
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #17
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #18
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_7
	; Draws '7' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #1
	ADD R1, R6, #6
	ADD R3, R5, #4
	ADD R4, R6, #11
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #6
	ADD R3, R5, #13
	ADD R4, R6, #8
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #8
	ADD R3, R5, #9
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #8
	ADD R3, R5, #10
	ADD R4, R6, #16
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #8
	ADD R3, R5, #11
	ADD R4, R6, #13
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #8
	ADD R3, R5, #12
	ADD R4, R6, #10
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #11
	ADD R3, R5, #8
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #14
	ADD R3, R5, #8
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #17
	ADD R3, R5, #8
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #20
	ADD R3, R5, #8
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_8
	; Draws '8' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #2
	ADD R1, R6, #6
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #6
	ADD R3, R5, #5
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #6
	ADD R3, R5, #10
	ADD R4, R6, #9
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #7
	ADD R3, R5, #11
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #8
	ADD R3, R5, #5
	ADD R4, R6, #12
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #8
	ADD R3, R5, #12
	ADD R4, R6, #11
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #9
	ADD R3, R5, #11
	ADD R4, R6, #16
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #11
	ADD R3, R5, #6
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #11
	ADD R3, R5, #11
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #12
	ADD R3, R5, #11
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #14
	ADD R3, R5, #4
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #14
	ADD R3, R5, #12
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #16
	ADD R3, R5, #11
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #18
	ADD R3, R5, #11
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_9
	; Draws '9' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #3
	ADD R1, R6, #6
	ADD R3, R5, #4
	ADD R4, R6, #16
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #6
	ADD R3, R5, #5
	ADD R4, R6, #10
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #6
	ADD R3, R5, #10
	ADD R4, R6, #9
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #7
	ADD R3, R5, #4
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #7
	ADD R3, R5, #11
	ADD R4, R6, #18
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #8
	ADD R3, R5, #4
	ADD R4, R6, #14
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #8
	ADD R3, R5, #12
	ADD R4, R6, #16
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #9
	ADD R3, R5, #12
	ADD R4, R6, #10
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #10
	ADD R3, R5, #10
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #12
	ADD R3, R5, #5
	ADD R4, R6, #16
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #12
	ADD R3, R5, #9
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #13
	ADD R3, R5, #12
	ADD R4, R6, #16
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #16
	ADD R3, R5, #8
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #17
	ADD R3, R5, #8
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #18
	ADD R3, R5, #8
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_A_UPPER
	; Draws 'A' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #4
	ADD R1, R6, #6
	ADD R3, R5, #5
	ADD R4, R6, #17
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #6
	ADD R3, R5, #6
	ADD R4, R6, #13
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #6
	ADD R3, R5, #9
	ADD R4, R6, #10
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #3
	ADD R1, R6, #9
	ADD R3, R5, #4
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #9
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #10
	ADD R3, R5, #10
	ADD R4, R6, #14
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #12
	ADD R3, R5, #3
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #12
	ADD R3, R5, #11
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #14
	ADD R3, R5, #11
	ADD R4, R6, #17
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #15
	ADD R3, R5, #3
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #15
	ADD R3, R5, #11
	ADD R4, R6, #17
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #16
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #0
	ADD R1, R6, #19
	ADD R3, R5, #3
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #12
	ADD R1, R6, #19
	ADD R3, R5, #13
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_B_UPPER
	; Draws 'B' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #1
	ADD R1, R6, #6
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #6
	ADD R3, R5, #10
	ADD R4, R6, #8
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #7
	ADD R3, R5, #11
	ADD R4, R6, #12
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #8
	ADD R3, R5, #12
	ADD R4, R6, #9
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #9
	ADD R3, R5, #10
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #9
	ADD R3, R5, #12
	ADD R4, R6, #11
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #11
	ADD R3, R5, #10
	ADD R4, R6, #14
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #12
	ADD R3, R5, #10
	ADD R4, R6, #14
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #13
	ADD R3, R5, #11
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #14
	ADD R3, R5, #12
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #15
	ADD R3, R5, #11
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #15
	ADD R3, R5, #12
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #12
	ADD R1, R6, #15
	ADD R3, R5, #13
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #18
	ADD R3, R5, #11
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #19
	ADD R3, R5, #11
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_C_UPPER
	; Draws 'C' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #3
	ADD R1, R6, #6
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #6
	ADD R3, R5, #5
	ADD R4, R6, #10
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #6
	ADD R3, R5, #12
	ADD R4, R6, #9
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #7
	ADD R3, R5, #4
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #12
	ADD R1, R6, #7
	ADD R3, R5, #13
	ADD R4, R6, #9
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #9
	ADD R3, R5, #4
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #9
	ADD R3, R5, #11
	ADD R4, R6, #10
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #0
	ADD R1, R6, #12
	ADD R3, R5, #4
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #16
	ADD R3, R5, #5
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #18
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_D_UPPER
	; Draws 'D' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #1
	ADD R1, R6, #6
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #6
	ADD R3, R5, #10
	ADD R4, R6, #8
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #7
	ADD R3, R5, #11
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #8
	ADD R3, R5, #12
	ADD R4, R6, #9
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #9
	ADD R3, R5, #12
	ADD R4, R6, #10
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #10
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #10
	ADD R3, R5, #12
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #12
	ADD R1, R6, #11
	ADD R3, R5, #13
	ADD R4, R6, #16
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #17
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #18
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #19
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_E_UPPER
	; Draws 'E' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #1
	ADD R1, R6, #6
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #6
	ADD R3, R5, #12
	ADD R4, R6, #8
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #12
	ADD R3, R5, #10
	ADD R4, R6, #14
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #19
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_F_UPPER
	; Draws 'F' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #1
	ADD R1, R6, #6
	ADD R3, R5, #5
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #6
	ADD R3, R5, #13
	ADD R4, R6, #8
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #13
	ADD R3, R5, #11
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_G_UPPER
	; Draws 'G' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #3
	ADD R1, R6, #6
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #6
	ADD R3, R5, #5
	ADD R4, R6, #10
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #6
	ADD R3, R5, #12
	ADD R4, R6, #9
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #7
	ADD R3, R5, #4
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #8
	ADD R3, R5, #4
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #9
	ADD R3, R5, #11
	ADD R4, R6, #10
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #0
	ADD R1, R6, #10
	ADD R3, R5, #4
	ADD R4, R6, #17
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #13
	ADD R3, R5, #12
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #15
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #17
	ADD R3, R5, #5
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #18
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_H_UPPER
	; Draws 'H' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #1
	ADD R1, R6, #6
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #6
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #13
	ADD R3, R5, #12
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_I_UPPER
	; Draws 'I' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #1
	ADD R1, R6, #6
	ADD R3, R5, #12
	ADD R4, R6, #8
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #8
	ADD R3, R5, #8
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #19
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_J_UPPER
	; Draws 'J' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #5
	ADD R1, R6, #6
	ADD R3, R5, #12
	ADD R4, R6, #8
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #8
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #8
	ADD R3, R5, #11
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #8
	ADD R3, R5, #12
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #0
	ADD R1, R6, #16
	ADD R3, R5, #4
	ADD R4, R6, #17
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #17
	ADD R3, R5, #4
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #17
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #18
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #20
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_K_UPPER
	; Draws 'K' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #1
	ADD R1, R6, #6
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #6
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #6
	ADD R3, R5, #11
	ADD R4, R6, #13
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #6
	ADD R3, R5, #12
	ADD R4, R6, #11
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #9
	ADD R3, R5, #10
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #11
	ADD R3, R5, #10
	ADD R4, R6, #18
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #12
	ADD R3, R5, #10
	ADD R4, R6, #16
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #13
	ADD R3, R5, #10
	ADD R4, R6, #16
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #16
	ADD R3, R5, #11
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #18
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #12
	ADD R1, R6, #20
	ADD R3, R5, #13
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_L_UPPER
	; Draws 'L' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #1
	ADD R1, R6, #6
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #19
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_M_UPPER
	; Draws 'M' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #1
	ADD R1, R6, #6
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #6
	ADD R3, R5, #5
	ADD R4, R6, #14
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #6
	ADD R3, R5, #8
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #6
	ADD R3, R5, #12
	ADD R4, R6, #13
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #7
	ADD R3, R5, #6
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #10
	ADD R3, R5, #8
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #13
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_N_UPPER
	; Draws 'N' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #1
	ADD R1, R6, #6
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #6
	ADD R3, R5, #5
	ADD R4, R6, #12
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #6
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #7
	ADD R3, R5, #6
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #10
	ADD R3, R5, #7
	ADD R4, R6, #18
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #12
	ADD R3, R5, #8
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #15
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_O_UPPER
	; Draws 'O' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #3
	ADD R1, R6, #6
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #6
	ADD R3, R5, #5
	ADD R4, R6, #10
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #6
	ADD R3, R5, #10
	ADD R4, R6, #9
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #7
	ADD R3, R5, #4
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #7
	ADD R3, R5, #11
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #8
	ADD R3, R5, #4
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #8
	ADD R3, R5, #12
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #9
	ADD R3, R5, #12
	ADD R4, R6, #10
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #10
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #0
	ADD R1, R6, #11
	ADD R3, R5, #4
	ADD R4, R6, #16
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #12
	ADD R1, R6, #12
	ADD R3, R5, #13
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #17
	ADD R3, R5, #5
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #17
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #18
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_P_UPPER
	; Draws 'P' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #1
	ADD R1, R6, #6
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #6
	ADD R3, R5, #11
	ADD R4, R6, #8
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #7
	ADD R3, R5, #12
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #8
	ADD R3, R5, #12
	ADD R4, R6, #9
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #9
	ADD R3, R5, #11
	ADD R4, R6, #16
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #12
	ADD R1, R6, #10
	ADD R3, R5, #13
	ADD R4, R6, #12
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #13
	ADD R3, R5, #11
	ADD R4, R6, #16
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #14
	ADD R3, R5, #11
	ADD R4, R6, #16
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_Q_UPPER
	; Draws 'Q' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #3
	ADD R1, R6, #6
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #6
	ADD R3, R5, #5
	ADD R4, R6, #10
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #6
	ADD R3, R5, #10
	ADD R4, R6, #9
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #7
	ADD R3, R5, #4
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #7
	ADD R3, R5, #11
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #8
	ADD R3, R5, #4
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #8
	ADD R3, R5, #12
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #9
	ADD R3, R5, #12
	ADD R4, R6, #10
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #10
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #0
	ADD R1, R6, #11
	ADD R3, R5, #4
	ADD R4, R6, #16
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #12
	ADD R1, R6, #12
	ADD R3, R5, #13
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #17
	ADD R3, R5, #5
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #17
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #18
	ADD R3, R5, #8
	ADD R4, R6, #24
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #23
	ADD R3, R5, #11
	ADD R4, R6, #26
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #23
	ADD R3, R5, #12
	ADD R4, R6, #25
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #24
	ADD R3, R5, #12
	ADD R4, R6, #25
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #25
	ADD R3, R5, #11
	ADD R4, R6, #26
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_R_UPPER
	; Draws 'R' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #1
	ADD R1, R6, #6
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #6
	ADD R3, R5, #11
	ADD R4, R6, #8
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #7
	ADD R3, R5, #12
	ADD R4, R6, #14
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #8
	ADD R3, R5, #12
	ADD R4, R6, #9
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #9
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #9
	ADD R3, R5, #11
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #12
	ADD R3, R5, #10
	ADD R4, R6, #16
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #13
	ADD R3, R5, #11
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #16
	ADD R3, R5, #11
	ADD R4, R6, #18
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #18
	ADD R3, R5, #12
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #20
	ADD R3, R5, #13
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_S_UPPER
	; Draws 'S' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #3
	ADD R1, R6, #6
	ADD R3, R5, #5
	ADD R4, R6, #14
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #6
	ADD R3, R5, #11
	ADD R4, R6, #9
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #7
	ADD R3, R5, #5
	ADD R4, R6, #13
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #7
	ADD R3, R5, #12
	ADD R4, R6, #9
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #8
	ADD R3, R5, #5
	ADD R4, R6, #12
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #9
	ADD R3, R5, #11
	ADD R4, R6, #10
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #11
	ADD R3, R5, #6
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #12
	ADD R3, R5, #9
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #13
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #14
	ADD R3, R5, #11
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #15
	ADD R3, R5, #12
	ADD R4, R6, #16
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #16
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #16
	ADD R3, R5, #12
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #18
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_T_UPPER
	; Draws 'T' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #0
	ADD R1, R6, #6
	ADD R3, R5, #13
	ADD R4, R6, #8
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #8
	ADD R3, R5, #8
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_U_UPPER
	; Draws 'U' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #1
	ADD R1, R6, #6
	ADD R3, R5, #4
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #6
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #6
	ADD R3, R5, #11
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #6
	ADD R3, R5, #12
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #17
	ADD R3, R5, #5
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #17
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #18
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #19
	ADD R3, R5, #11
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #3
	ADD R1, R6, #20
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_V_UPPER
	; Draws 'V' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #0
	ADD R1, R6, #6
	ADD R3, R5, #4
	ADD R4, R6, #8
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #6
	ADD R3, R5, #10
	ADD R4, R6, #18
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #6
	ADD R3, R5, #11
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #6
	ADD R3, R5, #12
	ADD R4, R6, #11
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #12
	ADD R1, R6, #6
	ADD R3, R5, #13
	ADD R4, R6, #8
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #8
	ADD R3, R5, #4
	ADD R4, R6, #12
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #10
	ADD R3, R5, #5
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #10
	ADD R3, R5, #9
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #12
	ADD R3, R5, #5
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #13
	ADD R3, R5, #9
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #14
	ADD R3, R5, #6
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #3
	ADD R1, R6, #15
	ADD R3, R5, #6
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #17
	ADD R3, R5, #9
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_W_UPPER
	; Draws 'W' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #0
	ADD R1, R6, #6
	ADD R3, R5, #3
	ADD R4, R6, #13
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #6
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #12
	ADD R1, R6, #6
	ADD R3, R5, #13
	ADD R4, R6, #12
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #9
	ADD R3, R5, #6
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #9
	ADD R3, R5, #8
	ADD R4, R6, #16
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #10
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #3
	ADD R1, R6, #11
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #12
	ADD R3, R5, #6
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #13
	ADD R3, R5, #6
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #13
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #16
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_X_UPPER
	; Draws 'X' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #0
	ADD R1, R6, #6
	ADD R3, R5, #4
	ADD R4, R6, #7
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #6
	ADD R3, R5, #10
	ADD R4, R6, #12
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #6
	ADD R3, R5, #11
	ADD R4, R6, #10
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #6
	ADD R3, R5, #12
	ADD R4, R6, #8
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #12
	ADD R1, R6, #6
	ADD R3, R5, #13
	ADD R4, R6, #7
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #7
	ADD R3, R5, #5
	ADD R4, R6, #9
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #7
	ADD R3, R5, #9
	ADD R4, R6, #13
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #9
	ADD R3, R5, #6
	ADD R4, R6, #10
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #9
	ADD R3, R5, #8
	ADD R4, R6, #18
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #3
	ADD R1, R6, #10
	ADD R3, R5, #10
	ADD R4, R6, #12
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #12
	ADD R3, R5, #9
	ADD R4, R6, #13
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #13
	ADD R3, R5, #6
	ADD R4, R6, #18
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #13
	ADD R3, R5, #8
	ADD R4, R6, #17
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #14
	ADD R3, R5, #5
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #14
	ADD R3, R5, #9
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #3
	ADD R1, R6, #15
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #16
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #17
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #17
	ADD R3, R5, #11
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #19
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #19
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #0
	ADD R1, R6, #20
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #12
	ADD R1, R6, #20
	ADD R3, R5, #13
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_Y_UPPER
	; Draws 'Y' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #0
	ADD R1, R6, #6
	ADD R3, R5, #4
	ADD R4, R6, #8
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #6
	ADD R3, R5, #10
	ADD R4, R6, #13
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #6
	ADD R3, R5, #11
	ADD R4, R6, #11
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #6
	ADD R3, R5, #12
	ADD R4, R6, #9
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #12
	ADD R1, R6, #6
	ADD R3, R5, #13
	ADD R4, R6, #8
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #8
	ADD R3, R5, #5
	ADD R4, R6, #10
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #8
	ADD R3, R5, #9
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #10
	ADD R3, R5, #6
	ADD R4, R6, #12
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #10
	ADD R3, R5, #8
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #3
	ADD R1, R6, #12
	ADD R3, R5, #9
	ADD R4, R6, #14
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #14
	ADD R3, R5, #9
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #15
	ADD R3, R5, #8
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_Z_UPPER
	; Draws 'Z' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #1
	ADD R1, R6, #6
	ADD R3, R5, #12
	ADD R4, R6, #8
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #8
	ADD R3, R5, #9
	ADD R4, R6, #13
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #8
	ADD R3, R5, #10
	ADD R4, R6, #12
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #8
	ADD R3, R5, #11
	ADD R4, R6, #10
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #8
	ADD R3, R5, #12
	ADD R4, R6, #9
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #9
	ADD R3, R5, #8
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #10
	ADD R3, R5, #7
	ADD R4, R6, #16
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #12
	ADD R3, R5, #6
	ADD R4, R6, #18
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #13
	ADD R3, R5, #5
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #3
	ADD R1, R6, #15
	ADD R3, R5, #5
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #16
	ADD R3, R5, #5
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #18
	ADD R3, R5, #5
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #19
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_A
	; Draws 'a' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #2
	ADD R1, R6, #10
	ADD R3, R5, #9
	ADD R4, R6, #13
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #11
	ADD R3, R5, #10
	ADD R4, R6, #22
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #12
	ADD R3, R5, #11
	ADD R4, R6, #22
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #13
	ADD R3, R5, #11
	ADD R4, R6, #22
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #3
	ADD R1, R6, #14
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #14
	ADD R3, R5, #11
	ADD R4, R6, #17
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #15
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #18
	ADD R3, R5, #11
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #19
	ADD R3, R5, #13
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #21
	ADD R3, R5, #13
	ADD R4, R6, #22
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_B
	; Draws 'b' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #1
	ADD R1, R6, #5
	ADD R3, R5, #5
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #10
	ADD R3, R5, #11
	ADD R4, R6, #13
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #11
	ADD R3, R5, #12
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #13
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #13
	ADD R3, R5, #11
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #17
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #18
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_C
	; Draws 'c' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #3
	ADD R1, R6, #10
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #10
	ADD R3, R5, #5
	ADD R4, R6, #14
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #10
	ADD R3, R5, #11
	ADD R4, R6, #13
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #11
	ADD R3, R5, #4
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #11
	ADD R3, R5, #12
	ADD R4, R6, #13
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #12
	ADD R3, R5, #4
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #13
	ADD R3, R5, #11
	ADD R4, R6, #14
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #16
	ADD R3, R5, #5
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #18
	ADD R3, R5, #11
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #19
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_D
	; Draws 'd' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #8
	ADD R1, R6, #5
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #10
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #10
	ADD R3, R5, #12
	ADD R4, R6, #13
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #11
	ADD R3, R5, #4
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #18
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #21
	ADD R3, R5, #11
	ADD R4, R6, #22
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_E
	; Draws 'e' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #3
	ADD R1, R6, #10
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #10
	ADD R3, R5, #5
	ADD R4, R6, #14
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #10
	ADD R3, R5, #10
	ADD R4, R6, #13
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #11
	ADD R3, R5, #4
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #11
	ADD R3, R5, #11
	ADD R4, R6, #17
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #12
	ADD R3, R5, #4
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #13
	ADD R3, R5, #12
	ADD R4, R6, #14
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #14
	ADD R3, R5, #12
	ADD R4, R6, #17
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #15
	ADD R3, R5, #5
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #15
	ADD R3, R5, #12
	ADD R4, R6, #17
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #18
	ADD R3, R5, #11
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_F
	; Draws 'f' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #6
	ADD R1, R6, #5
	ADD R3, R5, #7
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #5
	ADD R3, R5, #8
	ADD R4, R6, #9
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #5
	ADD R3, R5, #12
	ADD R4, R6, #8
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #12
	ADD R1, R6, #5
	ADD R3, R5, #13
	ADD R4, R6, #6
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #6
	ADD R3, R5, #7
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #7
	ADD R3, R5, #7
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #0
	ADD R1, R6, #12
	ADD R3, R5, #12
	ADD R4, R6, #14
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_G
	; Draws 'g' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #2
	ADD R1, R6, #10
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #10
	ADD R3, R5, #12
	ADD R4, R6, #13
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #11
	ADD R3, R5, #4
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #13
	ADD R3, R5, #9
	ADD R4, R6, #26
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #13
	ADD R3, R5, #10
	ADD R4, R6, #25
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #13
	ADD R3, R5, #11
	ADD R4, R6, #24
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #13
	ADD R3, R5, #12
	ADD R4, R6, #22
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #18
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #23
	ADD R3, R5, #9
	ADD R4, R6, #26
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #24
	ADD R3, R5, #9
	ADD R4, R6, #26
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_H
	; Draws 'h' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #1
	ADD R1, R6, #5
	ADD R3, R5, #5
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #10
	ADD R3, R5, #10
	ADD R4, R6, #13
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #11
	ADD R3, R5, #11
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #13
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_I
	; Draws 'i' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #5
	ADD R1, R6, #5
	ADD R3, R5, #9
	ADD R4, R6, #8
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #8
	ADD R3, R5, #8
	ADD R4, R6, #9
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #10
	ADD R3, R5, #9
	ADD R4, R6, #12
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #12
	ADD R3, R5, #9
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #19
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_J
	; Draws 'j' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #6
	ADD R1, R6, #5
	ADD R3, R5, #10
	ADD R4, R6, #8
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #8
	ADD R3, R5, #9
	ADD R4, R6, #9
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #10
	ADD R3, R5, #10
	ADD R4, R6, #12
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #12
	ADD R3, R5, #8
	ADD R4, R6, #26
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #12
	ADD R3, R5, #9
	ADD R4, R6, #25
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #12
	ADD R3, R5, #10
	ADD R4, R6, #23
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #22
	ADD R3, R5, #8
	ADD R4, R6, #26
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #23
	ADD R3, R5, #8
	ADD R4, R6, #26
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #24
	ADD R3, R5, #8
	ADD R4, R6, #26
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_K
	; Draws 'k' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #1
	ADD R1, R6, #5
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #10
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #10
	ADD R3, R5, #11
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #10
	ADD R3, R5, #12
	ADD R4, R6, #13
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #11
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #13
	ADD R3, R5, #10
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #14
	ADD R3, R5, #10
	ADD R4, R6, #17
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #17
	ADD R3, R5, #11
	ADD R4, R6, #18
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #18
	ADD R3, R5, #11
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #19
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #12
	ADD R1, R6, #20
	ADD R3, R5, #13
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_L
	; Draws 'l' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #1
	ADD R1, R6, #5
	ADD R3, R5, #7
	ADD R4, R6, #7
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #7
	ADD R3, R5, #7
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #18
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #20
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_M
	; Draws 'm' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #1
	ADD R1, R6, #10
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #10
	ADD R3, R5, #12
	ADD R4, R6, #12
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #12
	ADD R3, R5, #8
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #12
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_N
	; Draws 'n' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #1
	ADD R1, R6, #10
	ADD R3, R5, #5
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #10
	ADD R3, R5, #10
	ADD R4, R6, #13
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #11
	ADD R3, R5, #11
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #13
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_O
	; Draws 'o' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #3
	ADD R1, R6, #10
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #10
	ADD R3, R5, #5
	ADD R4, R6, #14
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #10
	ADD R3, R5, #10
	ADD R4, R6, #13
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #11
	ADD R3, R5, #4
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #11
	ADD R3, R5, #11
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #12
	ADD R3, R5, #4
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #12
	ADD R3, R5, #12
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #13
	ADD R3, R5, #12
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #15
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #16
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #17
	ADD R3, R5, #5
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #18
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_P
	; Draws 'p' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #1
	ADD R1, R6, #10
	ADD R3, R5, #5
	ADD R4, R6, #26
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #10
	ADD R3, R5, #11
	ADD R4, R6, #13
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #11
	ADD R3, R5, #12
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #13
	ADD R3, R5, #11
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #18
	ADD R3, R5, #11
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_Q
	; Draws 'q' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #2
	ADD R1, R6, #10
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #10
	ADD R3, R5, #12
	ADD R4, R6, #13
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #11
	ADD R3, R5, #4
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #13
	ADD R3, R5, #12
	ADD R4, R6, #26
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #18
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_R
	; Draws 'r' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #1
	ADD R1, R6, #10
	ADD R3, R5, #12
	ADD R4, R6, #12
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #12
	ADD R1, R6, #11
	ADD R3, R5, #13
	ADD R4, R6, #14
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #3
	ADD R1, R6, #12
	ADD R3, R5, #6
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #12
	ADD R3, R5, #7
	ADD R4, R6, #14
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #12
	ADD R3, R5, #13
	ADD R4, R6, #13
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #13
	ADD R3, R5, #13
	ADD R4, R6, #14
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #0
	ADD R1, R6, #19
	ADD R3, R5, #9
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_S
	; Draws 's' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #3
	ADD R1, R6, #10
	ADD R3, R5, #5
	ADD R4, R6, #16
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #10
	ADD R3, R5, #11
	ADD R4, R6, #13
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #11
	ADD R3, R5, #5
	ADD R4, R6, #16
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #12
	ADD R3, R5, #5
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #14
	ADD R3, R5, #9
	ADD R4, R6, #17
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #15
	ADD R3, R5, #11
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #16
	ADD R3, R5, #12
	ADD R4, R6, #17
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #17
	ADD R3, R5, #11
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #17
	ADD R3, R5, #12
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #18
	ADD R3, R5, #11
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_T
	; Draws 't' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #3
	ADD R1, R6, #6
	ADD R3, R5, #6
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #0
	ADD R1, R6, #10
	ADD R3, R5, #12
	ADD R4, R6, #12
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #17
	ADD R3, R5, #7
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #18
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #19
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_U
	; Draws 'u' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #1
	ADD R1, R6, #10
	ADD R3, R5, #4
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #10
	ADD R3, R5, #11
	ADD R4, R6, #22
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #18
	ADD R3, R5, #11
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #19
	ADD R3, R5, #12
	ADD R4, R6, #22
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #12
	ADD R1, R6, #19
	ADD R3, R5, #13
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #20
	ADD R3, R5, #13
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_V
	; Draws 'v' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #0
	ADD R1, R6, #10
	ADD R3, R5, #4
	ADD R4, R6, #11
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #10
	ADD R3, R5, #10
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #10
	ADD R3, R5, #11
	ADD R4, R6, #16
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #10
	ADD R3, R5, #12
	ADD R4, R6, #13
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #11
	ADD R3, R5, #4
	ADD R4, R6, #13
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #11
	ADD R3, R5, #9
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #12
	ADD R3, R5, #5
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #13
	ADD R3, R5, #5
	ADD R4, R6, #16
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #14
	ADD R3, R5, #9
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #15
	ADD R3, R5, #6
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #3
	ADD R1, R6, #16
	ADD R3, R5, #6
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #17
	ADD R3, R5, #9
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_W
	; Draws 'w' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #0
	ADD R1, R6, #10
	ADD R3, R5, #3
	ADD R4, R6, #12
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #10
	ADD R3, R5, #6
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #10
	ADD R3, R5, #8
	ADD R4, R6, #17
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #10
	ADD R3, R5, #11
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #10
	ADD R3, R5, #12
	ADD R4, R6, #18
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #12
	ADD R1, R6, #10
	ADD R3, R5, #13
	ADD R4, R6, #11
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #3
	ADD R1, R6, #11
	ADD R3, R5, #4
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #12
	ADD R3, R5, #6
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #14
	ADD R3, R5, #11
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #17
	ADD R3, R5, #11
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_X
	; Draws 'x' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #1
	ADD R1, R6, #10
	ADD R3, R5, #5
	ADD R4, R6, #12
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #10
	ADD R3, R5, #9
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #10
	ADD R3, R5, #10
	ADD R4, R6, #14
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #10
	ADD R3, R5, #11
	ADD R4, R6, #13
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #10
	ADD R3, R5, #12
	ADD R4, R6, #11
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #11
	ADD R3, R5, #6
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #11
	ADD R3, R5, #8
	ADD R4, R6, #20
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #12
	ADD R3, R5, #6
	ADD R4, R6, #13
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #3
	ADD R1, R6, #13
	ADD R3, R5, #10
	ADD R4, R6, #14
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #14
	ADD R3, R5, #5
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #14
	ADD R3, R5, #8
	ADD R4, R6, #18
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #16
	ADD R3, R5, #9
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #3
	ADD R1, R6, #17
	ADD R3, R5, #5
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #17
	ADD R3, R5, #10
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #18
	ADD R3, R5, #5
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #18
	ADD R3, R5, #11
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #19
	ADD R3, R5, #5
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #20
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_Y
	; Draws 'y' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #0
	ADD R1, R6, #10
	ADD R3, R5, #4
	ADD R4, R6, #11
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #10
	ADD R3, R5, #10
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #10
	ADD R3, R5, #11
	ADD R4, R6, #16
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #10
	ADD R3, R5, #12
	ADD R4, R6, #13
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #11
	ADD R3, R5, #4
	ADD R4, R6, #14
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #12
	ADD R3, R5, #5
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #12
	ADD R3, R5, #9
	ADD R4, R6, #22
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #14
	ADD R3, R5, #5
	ADD R4, R6, #16
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #15
	ADD R3, R5, #6
	ADD R4, R6, #26
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #15
	ADD R3, R5, #8
	ADD R4, R6, #24
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #3
	ADD R1, R6, #16
	ADD R3, R5, #6
	ADD R4, R6, #19
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #17
	ADD R3, R5, #7
	ADD R4, R6, #25
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #22
	ADD R3, R5, #6
	ADD R4, R6, #26
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #0
	ADD R1, R6, #23
	ADD R3, R5, #6
	ADD R4, R6, #26
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DRAW_Z
	; Draws 'z' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #1
	ADD R1, R6, #10
	ADD R3, R5, #11
	ADD R4, R6, #12
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #12
	ADD R3, R5, #8
	ADD R4, R6, #17
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #12
	ADD R3, R5, #9
	ADD R4, R6, #16
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #12
	ADD R3, R5, #10
	ADD R4, R6, #15
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #12
	ADD R3, R5, #11
	ADD R4, R6, #13
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #13
	ADD R3, R5, #7
	ADD R4, R6, #18
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #14
	ADD R3, R5, #6
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #15
	ADD R3, R5, #6
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #3
	ADD R1, R6, #16
	ADD R3, R5, #6
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #17
	ADD R3, R5, #6
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #18
	ADD R3, R5, #6
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #19
	ADD R3, R5, #12
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	
	END