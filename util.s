;Delays
TFT_INTERVAL 		EQU 0x4FFFFF
INTERVAL_4MS 		EQU 288889
INTERVAL_18MS 		EQU 1300000
INTERVAL_27uS 		EQU 1944
INTERVAL_40uS 		EQU 2880
INTERVAL_50uS 		EQU 3600
INTERVAL_70uS 		EQU 5040
INTERVAL_80uS 		EQU 5760

;Bases
RCC_BASE   	EQU 0x40021000
	
;RCC Offsets
RCC_APB1ENR EQU 0x1C
RCC_APB2ENR EQU 0x18
	
;GPIOx Offsets
GPIOx_CRL 	EQU 0x00
GPIOx_CRH 	EQU 0x04
GPIOx_IDR 	EQU 0x08
GPIOx_ODR 	EQU 0x0C

	IMPORT DRAW_LARGE
	IMPORT DRAW_RECTANGLE_FILLED
	
	EXPORT DELAY
	EXPORT DIGIT_TO_ASCII
	EXPORT DELAY_uS	
	EXPORT REM
	EXPORT BREAK_TIME
	
	AREA  MYCODE, CODE, READONLY

BREAK_TIME FUNCTION
	;R2; Full RTC Input
	;R3: Minutes Output
	;R4: Hours Output
	;R5: Day Output
	;R6: Month Output
	;R7: Year Output
	PUSH {R0-R2,LR}
	MOV R6,R2
	LDR R7,=60*60*24*30*12
	BL REM
	MOV R7,R2 ;Years
	PUSH {R7}
	
	MOV R6,R5
	LDR R7,=60*60*24*30
	BL REM
	MOV R6,R2 ;Months
	PUSH {R6}
	
	MOV R6,R5
	LDR R7,=60*60*24
	BL REM
	MOV R1,R5
	MOV R5,R2 ;Days
	PUSH {R5}
	
	MOV R6,R1
	LDR R7,=60*60
	BL REM
	MOV R4,R2 ;Hours
	PUSH {R4}
	
	MOV R6,R5
	LDR R7,=60
	BL REM
	MOV R3,R2 ;Minutes
	
	POP {R4}
	POP {R5}
	POP {R6}
	POP {R7}
	
	ADD R7,#1970
	
	POP {R0-R2,PC}
	ENDFUNC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;		
DELAY FUNCTION 
	;Takes R11
	PUSH {R11, LR}
DELAY_LOOP
	SUBS R11,R11,#1
	BGT DELAY_LOOP
	POP {R11, PC}
	ENDFUNC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
DELAY_uS FUNCTION
        ; Input: R11 = delay duration in microseconds
        ; Preserve registers
        PUSH {R1-R2, LR}

        ; Enable TIM2 Clock
        LDR R1, =0x40021000       ; Base address of RCC
        LDR R2, [R1, #0x1C]       ; Offset to RCC_APB1ENR
        ORR R2, R2, #(1 << 0)     ;Enable TIM2 (bit 0)
        STR R2, [R1]

        ; Configure Prescaler for 1 µs tick
        LDR R1, =0x40000000       ; Base address of TIM2
        LDR R2, =7                ; Prescaler value (8-1 for 1 µs with 8 MHz clock)
        STR R2, [R1, #0x28]       ; Write to TIM2_PSC (offset 0x28)

        ; Set ARR to the delay value
        STR R11, [R1, #0x2C]       ; Write delay (R0) to TIM2_ARR

        ; Start the Timer
        LDR R2, [R1, #0x00]       ; Read TIM2_CR1
        ORR R2, R2, #1            ; Set CEN (bit 0) to enable the counter
        STR R2, [R1, #0x00]

Wait_Overflow
        ; Wait for Update Interrupt Flag (UIF)
        LDR R2, [R1, #0x10]       ; Read TIM2_SR
        TST R2, #(1 << 0)         ; Check UIF (bit 0)
        BEQ Wait_Overflow         ; Loop until UIF is set

        ; Clear UIF Flag
        LDR R2, [R1, #0x10]
        BIC R2, R2, #(1 << 0)     ; Clear UIF by writing 0
        STR R2, [R1, #0x10]

        ; Stop the Timer
        LDR R2, [R1, #0x00]       ; Read TIM2_CR1
        BIC R2, R2, #1            ; Clear CEN (bit 0) to disable the counter
        STR R2, [R1, #0x00]

        ; Restore registers and return
        POP {R1-R2, PC}
        BX LR

		ENDFUNC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
DIGIT_TO_ASCII FUNCTION
	;takes number in R2 and turns it to ASCII
	;R2: digit input
	;R2: ASCII output
	PUSH{LR}
	ADD R2, R2, #48
	POP{PC}
	ENDFUNC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
REG_TO_ASCII FUNCTION
	;takes number in R2 and turns it to ASCII
	;R2: input number
	;R3: ONES
	;R4: TENS
	;R5: HUNDREDS
	ENDFUNC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
REM FUNCTION
	;R2: Quotient Output
	;R5: Remainder Output
	;R6: Dividend Input
	;R7: Divisor Input
	PUSH {R0-R1,R3-R4,R6-R12,LR}
	UDIV R2, R6, R7
	MLS R5, R2, R7 , R6
	POP {R0-R1,R3-R4,R6-R12,PC}
	ENDFUNC
