INTERVAL EQU 0X4FFFFF

	EXPORT DELAY
	EXPORT DIGIT_TO_ASCII
	
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
	;takes number in R0 and turns it to ASCII
	;R0: digit input
	;R0: ASCII output
	PUSH{LR}
	ADD R0, R0,#48
	POP{PC}
	ENDFUNC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


	END