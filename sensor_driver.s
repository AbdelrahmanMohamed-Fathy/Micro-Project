GPIOB_BASE		EQU 0X40010C00
GPIOx_CRH 		EQU 0x04
GPIOx_IDR 		EQU 0x08
GPIOx_ODR		EQU 0x0C

INTERVAL_27uS 	EQU 2000
INTERVAL_40uS 	EQU 2880
INTERVAL_50uS 	EQU 3600
INTERVAL_70uS 	EQU 5040
INTERVAL_4MS 	EQU 288889
INTERVAL_18MS 	EQU 1300000

	IMPORT DELAY
	
	EXPORT SENSOR_READ

	AREA mycode, CODE, READONLY
		
SENSOR_READ FUNCTION
	
	;Setting B9 to output at 50MHZ
	LDR R0,=GPIOB_BASE + GPIOx_CRH
	MOV R2,#4
	BL set_pin
	
	LDR R0,=GPIOB_BASE + GPIOx_CRH
	MOV R2,#5
	BL set_pin
	
	
	;Setting B9 to output at push-pull
	LDR R0,=GPIOB_BASE + GPIOx_CRH
	MOV R2,#6
	BL reset_pin
	
	LDR R0,=GPIOB_BASE + GPIOx_CRH
	MOV R2,#7
	BL reset_pin
	
	;setting standy by mode
	LDR R0,=GPIOB_BASE + GPIOx_ODR
	MOV R2,#9
	BL reset_pin
	LDR R11,=INTERVAL_18MS
	BL DELAY
	
	LDR R0,=GPIOB_BASE + GPIOx_ODR
	MOV R2,#9
	BL set_pin
	LDR R11,=INTERVAL_40uS
	BL DELAY
	
	;Setting B9 to input
	LDR R0,=GPIOB_BASE + GPIOx_CRH
	MOV R2,#4
	BL reset_pin
	
	LDR R0,=GPIOB_BASE + GPIOx_CRH
	MOV R2,#5
	BL reset_pin
	
	
	;Setting B9 to input at push-pull
	LDR R0,=GPIOB_BASE + GPIOx_CRH
	MOV R2,#6
	BL reset_pin
	
	LDR R0,=GPIOB_BASE + GPIOx_CRH
	MOV R2,#7
	BL set_pin
	
;Waiting for start message
	LDR R0,=GPIOB_BASE + GPIOx_IDR
__PULL_DOWN_WAIT
	LDR R1,[R0]
	MOV R2,#0x200
	ANDS R2,R1,R2
	BEQ __PULL_DOWN_WAIT
__PULL_UP_WAIT
	LDR R1,[R0]
	MOV R2,#0x200
	ANDS R2,R1,R2
	BNE __PULL_UP_WAIT

;Recieving message
	MOV R3,#0
__OUTER
	LDR R1,[R0]
	MOV R2,#0x200
	ANDS R2,R1,R2
	BEQ __OUTER

	LDR R11,=INTERVAL_27uS
	BL DELAY
	LDR R1,[R0]
	MVN R1,R1
	
	
	ADD R3,#1
	CMP R3,#40
	BNE __OUTER
__EXIT_LOOP


	
	ENDFUNC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
set_pin 
	; address in R0
	; pin location in R2
	PUSH {R0-R3, LR}
	LDR R1, [R0]
	MOV R3, #1
	LSL R3, R3, R2
	ORR R1, R3, R1
	STR R1, [R0]
	POP {R0-R3, PC}

reset_pin
	; address in R0
	; pin location in R2
	PUSH {R0-R3, LR}
	LDR R1, [R0]
	MOV R3, #1
	LSL R3, R3, R2
	MVN R3, R3
	AND R1, R1, R3
	STR R1, [R0]
	POP {R0-R3, PC}
	
	END