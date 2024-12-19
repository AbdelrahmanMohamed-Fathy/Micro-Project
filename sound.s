GPIOB_BASE 	EQU 0X40010C00
GPIOB_ODR 	EQU GPIOB_BASE + 0x0C
		
	AREA MYCODE, CODE, READONLY

	
	
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
set_pin
	PUSH {R0-R3, LR}
	LDR R0, =GPIOB_ODR
	LDR R1, [R0]
	MOV R3, #1
	LSL R3, R3, R2
	ORR R1, R3, R1
	STR R1, [R0]
	POP {R0-R3, PC}

reset_pin
	PUSH {R0-R3, LR}
	LDR R0, =GPIOB_ODR
	LDR R1, [R0]
	MOV R3, #1
	LSL R3, R3, R2
	MVN R3, R3
	AND R1, R1, R3
	STR R1, [R0]
	POP {R0-R3, PC}


	END