

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

