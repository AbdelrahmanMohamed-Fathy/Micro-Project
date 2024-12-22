	INCLUDE constants.inc
	
	IMPORT DELAY
	IMPORT DELAY_uS
	EXPORT SENSOR_READ
	EXPORT SENSOR_INIT
	EXPORT TIM2_INIT


	AREA mycode, CODE, READONLY

TIM2_INIT FUNCTION

	PUSH{R0-R1,LR}
    LDR R0, =0x40021000       ; RCC base address
    LDR R1, [R0, #0x1C]       ; RCC_APB1ENR address
    ORR R1, R1, #1            ; Enable TIM2 clock (bit 0)
    STR R1, [R0, #0x1C]       ; Write back to RCC_APB1ENR

    LDR R0, =0x40000000       ; TIM2 base address
    MOV R1, #71               ; Prescaler value (PSC = 71)
    STR R1, [R0, #0x28]       ; Write to TIM2_PSC
    MOV R1, #0xFFFF           ; Auto-reload value
    STR R1, [R0, #0x2C]       ; Write to TIM2_ARR

    LDR R1, [R0, #0x0C]       ; Read TIM2_DIER
    ORR R1, R1, #1            ; Enable update interrupt (UIE)
    STR R1, [R0, #0x0C]       ; Write back to TIM2_DIER

    LDR R1, [R0, #0x00]       ; Read TIM2_CR1
    ORR R1, R1, #1            ; Enable TIM2 counter (CEN)
    STR R1, [R0, #0x00]       ; Write back to TIM2_CR1

	POP {R0-R1,PC}
	ENDFUNC
		
SENSOR_INIT FUNCTION
	PUSH {R0-R2,LR}
	
	LDR R0,=RCC_BASE + RCC_APB2ENR
	MOV R2,#3
	BL set_pin
	
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
	;R11: Temp output
	PUSH {R0-R6,LR}
	
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

	MOV R11, #40
	BL DELAY_uS
	
;Waiting for start message
	BL __PULL_DOWN_WAIT

	MOV R11, #80
	BL DELAY_uS
	
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
	
;__CHECK
;	AND R5, R2, #0x000000FF
;	AND R6, R2, #0x0000FF00
;	LSR R6, #8
;	ADD R5, R6
;	AND R6, R2, #0x00FF0000
;	LSR R6, #16
;	ADD R5, R6
;	AND R6, R2, #0xFF000000
;	LSR R6, #24
;	ADD R5, R6
;	CMP R5, R4
;	BNE SENSOR_READ

	AND R2,R2,#0xFF00
	LSR R2,#8
	MOV R11, R2
	

	BL __PULL_DOWN_WAIT
	BL SENSOR_INIT

	POP {R0-R6,PC}
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