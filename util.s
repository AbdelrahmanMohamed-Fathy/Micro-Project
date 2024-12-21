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
    PUSH {R1-R4, LR}                ; Save registers
    LDR R1, =0x40000024          ; TIM2_CNT address
    MOV R4, R0                   ; Load delay value (in R0) into R4

    ; Reset the counter
    LDR R0, =0x40000010          ; TIM2_SR address
    LDR R2, [R0]                 ; Load TIM2_SR
    BIC R2, R2, #(1 << 0)        ; Clear UIF (update interrupt flag)
    STR R2, [R0]                 ; Write back to TIM2_SR

Wait_Loop:
    LDR R2, [R1]                 ; Read TIM2_CNT
    CMP R2, R4                   ; Compare CNT with delay value
    BLO Wait_Loop                ; Loop until CNT >= delay value

    POP {R1-R4, PC}              ; Restore registers
    BX LR                        ; Return

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
