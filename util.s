TFT_INTERVAL 	EQU 0x4FFFFF
INTERVAL_4MS 	EQU 288889
INTERVAL_18MS 	EQU 1300000
INTERVAL_27uS 	EQU 1944
INTERVAL_40uS 	EQU 2880
INTERVAL_50uS 	EQU 3600
INTERVAL_70uS 	EQU 5040
INTERVAL_80uS 	EQU 5760

	EXPORT DELAY
	EXPORT DIGIT_TO_ASCII
	EXPORT REG_TO_BCD
	
	AREA  MYCODE, CODE, READONLY
		
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;		
DELAY FUNCTION 
	;Takes R11
	PUSH{R11, LR}
DELAY_LOOP
	SUBS R11,R11,#1
	BGT DELAY_LOOP
	POP {R11, PC}
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
REG_TO_BCD FUNCTION
	;takes number in R2 and turns it to ASCII
	;R2: input number
	;R3: ONES
	;R4: TENS
	;R5: HUNDREDS
	PUSH{R0-R12, LR}
	
	

	POP{R0-R12, PC}
	ENDFUNC

	END