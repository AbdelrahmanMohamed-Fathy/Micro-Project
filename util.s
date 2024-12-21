;Delays
TFT_INTERVAL 		EQU 0x4FFFFF
INTERVAL_4MS 		EQU 288889
INTERVAL_18MS 		EQU 1300000
INTERVAL_27uS 		EQU 1944
INTERVAL_40uS 		EQU 2880
INTERVAL_50uS 		EQU 3600
INTERVAL_70uS 		EQU 5040
INTERVAL_80uS 		EQU 5760

;TFT_Positions
Time_pos_x			EQU 90
Time_pos_y			EQU 75
Char_big_size_x		EQU 59
Char_big_size_y		EQU 117
Char_small_size_x	EQU 15
Day_pos_x			EQU	5
Day_pos_y			EQU	5
Month_pos_x			EQU	5
Month_pos_y			EQU	30
Year_pos_x			EQU 212
Year_pos_y			EQU 62
Temp_pos_x			EQU 414
Temp_pos_y			EQU	10

;Bases
RCC_BASE   	EQU 0x40021000
	
;RCC Offsets
RCC_APB1ENR EQu 0x1C
RCC_APB2ENR EQU 0x18
	
;GPIOx Offsets
GPIOx_CRL 	EQU 0x00
GPIOx_CRH 	EQU 0x04
GPIOx_IDR 	EQU 0x08
GPIOx_ODR 	EQU 0x0C

	EXPORT DELAY
	EXPORT DIGIT_TO_ASCII
	EXPORT DRAW_TIME
	EXPORT BREAK_TIME
	EXPORT ERASE_TIME
	EXPORT DELAY_uS	
	IMPORT DRAW_LARGE
	
	AREA  MYCODE, CODE, READONLY
		
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
        LDR R1, =RCC_BASE + RCC_APB1ENR      ; Offset to RCC_APB1ENR
        ORR R2, R2, #(1 << 0)     			 ; Enable TIM2 (bit 0)
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

		ENDUFNC
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
DRAW_TIME FUNCTION
	;Draws time from input Hours in R4 and Minutes in R3
	;Minutes: R3
	;Hours: R4
	;Color: R10
	PUSH {R0-R12, LR}
	;Drawing Hours
	LDR R0,=Time_pos_x
	LDR R1,=Time_pos_y
	MOV R6,R4
	MOV R7,#10
	BL REM
	BL DIGIT_TO_ASCII
	BL DRAW_LARGE
	ADD R0,#Char_big_size_x
	MOV R2,R5
	BL DIGIT_TO_ASCII
	BL DRAW_LARGE
	ADD R0,#Char_big_size_x
	
	;Drawing ':'
	MOV R2,#':'
	BL DRAW_LARGE
	ADD R0,#Char_big_size_x
	
	;Drawing Minutes
	MOV R6,R3
	MOV R7,#10
	BL REM
	BL DIGIT_TO_ASCII
	BL DRAW_LARGE
	ADD R0,#Char_big_size_x
	MOV R2,R5
	BL DIGIT_TO_ASCII
	BL DRAW_LARGE
	
	POP {R0-R12, PC}
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
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
	
	POP {R0-R2,PC}
	ENDFUNC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ERASE_TIME FUNCTION
	;R8: Day:1 Night:0 Input
	PUSH {R0-R12,LR}
	
	
	
	POP {R0-R12,PC}
	ENDFUNC
	END