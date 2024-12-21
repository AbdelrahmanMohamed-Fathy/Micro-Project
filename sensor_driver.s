GPIOB_BASE		EQU 0X40010C00
GPIOx_CRH 		EQU 0x04
GPIOx_IDR 		EQU 0x08
GPIOx_ODR		EQU 0x0C

	IMPORT DELAY
	IMPORT DELAY_uS
	EXPORT SENSOR_READ
	EXPORT SENSOR_INIT


	AREA mycode, CODE, READONLY
		
SENSOR_INIT FUNCTION
	PUSH {R0-R2,LR}
	
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
	
	LDR R0,=GPIOB_BASE +GPIOx_ODR
	MOV R2,#9
	BL set_pin
	
	POP {R0-R2,PC}
	ENDFUNC
		
SENSOR_READ FUNCTION
	;outputs sensor data to R2
	;R2: sensor data output
	PUSH {R0,R1,R3-R4,R11,LR}
	
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
	MOV R11,#18000
	BL DELAY_uS
	
	LDR R0,=GPIOB_BASE + GPIOx_ODR
	MOV R2,#9
	BL set_pin
	MOV R11,#30
	BL DELAY_uS
	
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
	BL __PULL_DOWN_WAIT
	BL __PULL_UP_WAIT
;Recieving message
	MOV R2,#0
	MOV R3,#0
	MOV R4,#0
__MESSAGE
	BL __PULL_DOWN_WAIT

	MOV R11, #27
	BL DELAY_uS
	LDR R1,[R0]
	ORN R1,#0xFFFFFDFF
	LSR R1,#8
	ADD R2,R2,R1
	LSL R2,#1
	BL __PULL_UP_WAIT
	
	ADD R3,#1
	CMP R3,#32
	BNE __MESSAGE
__CHECKSUM	
	BL __PULL_DOWN_WAIT

	MOV R11,#27
	BL DELAY_uS
	LDR R1,[R0]
	ORN R1,#0xFFFFFDFF
	LSR R1,#8
	ADD R4,R4,R1
	LSL R4,#1
	BL __PULL_UP_WAIT
	
	ADD R3,#1
	CMP R3,#40
	BNE __CHECKSUM
	
	BL __PULL_DOWN_WAIT
	BL SENSOR_INIT
	
	;TODO Verify message
	
	POP {R0,R1,R3-R4,R11,PC}
	ENDFUNC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
__PULL_DOWN_WAIT
	PUSH {R0-R2,LR}
__INNER_DOWN
	LDR R0,=GPIOB_BASE + GPIOx_IDR
	LDR R1,[R0]
	MOV R2,#0x200
	AND R2,R1,R2
	CMP R2,#0
	BNE __INNER_DOWN
	POP {R0-R2,PC}

__PULL_UP_WAIT
	PUSH {R0-R2,LR}
__INNER_UP
	LDR R0,=GPIOB_BASE + GPIOx_IDR
	LDR R1,[R0]
	MOV R2,#0x200
	AND R2,R1,R2
	CMP R2,#0
	BEQ __INNER_UP
	POP {R0-R2,PC}

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