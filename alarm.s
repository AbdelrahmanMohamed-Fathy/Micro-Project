	INCLUDE constants.inc
	
	EXPORT SET_ALARM
	EXPORT READ_ALARM
	EXPORT CLEAR_ALARM
	
	AREA MYCODE, CODE, READONLY
		

READ_ALARM FUNCTION
	;R2: Returns alarm flag value in R2 
	PUSH {R0-R1,R3-R12,LR}
	
	LDR R0,=RTC_BASE + RTC_CRL
	LDR R2, [R0]
	AND R2,#2
	LSR R2,#1
	
	POP {R0-R1,R3-R12,PC}
	ENDFUNC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
SET_ALARM FUNCTION
	;R3: Number of seconds to put alarm on (Absolute value and Not Relative to current)
	PUSH {R0-R12,LR}
	
	;Enter configuration mode
	LDR R0,=RTC_BASE + RTC_CRL
	mov R2,#CNF
	BL waitRTC
	BL set_pin
	
	;Clearing Alarm Flag
	LDR R0,=RTC_BASE + RTC_CRL
 	MOV R2,#1
  	BL waitRTC
   	BL reset_pin
	
	;Setting Alarm value
	LDR R0,=RTC_BASE + RTC_ALRL
	BL waitRTC
	STR R3, [R0]
	
	LDR R0,=RTC_BASE + RTC_ALRH
	LSR R3,#16
	BL waitRTC
	STR R3, [R0]
	
	;Exit configuration mode
	LDR R0,=RTC_BASE + RTC_CRL
	mov R2,#CNF
	BL waitRTC
	BL reset_pin
	
	POP {R0-R12,PC}
	ENDFUNC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;		
CLEAR_ALARM FUNCTION
	;Clears Alarm Flag
	PUSH {R0-R12,LR}
	
	;Clearing Alarm Flag
	LDR R0,=RTC_BASE + RTC_CRL
 	MOV R2,#1
  	BL waitRTC
   	BL reset_pin
	
	POP {R0-R12,PC}
	ENDFUNC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;	
waitRTC
	PUSH {R0-R3, LR}
	LDR R0,=RTC_BASE + RTC_CRL
__loopback1
	LDR R1,[R0]
	AND R1, R1,#0x20
	CMP R1,#0
	BEQ __loopback1
	POP {R0-R3, PC}
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