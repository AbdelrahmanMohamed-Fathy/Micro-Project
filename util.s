INTERVAL EQU 0x4FFFFF
TEN EQU 10

	EXPORT DELAY
	EXPORT DIGIT_TO_ASCII
	EXPORT REG_TO_BCD
	
	AREA  MYCODE, CODE, READONLY
		
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;		
DELAY FUNCTION 
	PUSH{R0, LR}
	LDR R0, =INTERVAL
DELAY_LOOP
	SUBS R0,R0,#1
	BGT DELAY_LOOP
	POP {R0, PC}
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