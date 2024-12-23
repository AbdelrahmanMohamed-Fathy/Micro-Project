	INCLUDE constants.inc
	
	EXPORT SET_ALARM
	EXPORT READ_ALARM
	EXPORT CLEAR_ALARM
	
	AREA MYCODE, CODE, READONLY
		

READ_ALARM FUNCTION
	;if you need to change either of these register change all their occurances inside this function
	;R2: Returns alarm time value
	;R3: Returns alarm flag value
	PUSH {R0-R1,R4-R12,LR}
	
	LDR R0,=RTC_BASE + RTC_ALRH
	LDR R2, [R0]
	LDR R1,=0xFFFF
	AND R2,R1
	LSL R2,#16
	
	LDR R0,=RTC_BASE + RTC_ALRL
	LDR R1, [R0]
	ADD R2,R1
	
	LDR R0,=RTC_BASE + RTC_CRL
	LDR R3, [R0]
	AND R3,#2
	LSR R3,#1
	
	POP {R0-R1,R4-R12,PC}
	ENDFUNC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
SET_ALARM FUNCTION
	;R2: Number of seconds to put alarm on (Absolute value and Not Relative to current)
	PUSH {R0-R12,LR}
	MOV R3,R2
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