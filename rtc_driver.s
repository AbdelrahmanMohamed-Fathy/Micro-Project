;Bases
RTC_BASE 	EQU 0x40002800
BKP_BASE 	EQU 0x40006C00
PWR_BASE 	EQU 0x40007000
RCC_BASE 	EQU 0x40021000
	
;Offsets
PWR_CR 		EQU 0x00
RTC_CRL 	EQU 0x04
RTC_PRLH 	EQU 0x08
RTC_PRLL 	EQU 0x0C
RTC_CNTH 	EQU 0x18
RTC_CNTL 	EQU 0x1C
RCC_BDCR 	EQU 0x20
	
;Pins
RSF		EQU 3	;Registers Synchronized Flag
CNF 		EQU 4	;Configuration Flag
DBP		EQU 8	;Backup Domain write protection
RTCSEL0 	EQU 8	;RTC Clock Select
RTCSEL1 	EQU 9	;RTC Clock Select
RTCEN 		EQU 15	;RTC Enable





	
	EXPORT RTC_INIT
	EXPORT RTC_READ
	
	AREA	MYCODE, CODE, READONLY
	

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;	
RTC_READ FUNCTION
	;Returns RTC counter in R2
	;R2: RTC counter
	
	PUSH {R0-R1,LR}
	LDR R0,=RTC_BASE + RTC_CNTH
	LDR R1,[R0]
	LSL R1,#16
	LDR R2,[R0]
	ADD R2,R2,R1
	POP {R0-R1,PC}
	ENDFUNC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
RTC_INIT FUNCTION
	PUSH {R0-R3,LR}
	
	;Remove protection from backup registers
	LDR R0,=PWR_BASE + PWR_CR
	MOV R2,#DBP
	BL reset_pin
	
	;Setting RTCEN
	LDR R0,=RCC_BASE + RCC_BDCR
	MOV R2,#RTCEN
	BL set_pin
	
	;Setting RTCSEL[1:0] to 10 (LSI)
	LDR R0,=RCC_BASE + RCC_BDCR
	MOV R2,#RTCSEL1
	BL set_pin
	
	LDR R0,=RCC_BASE + RCC_BDCR
	MOV R2,#RTCSEL0
	BL reset_pin
	
	;Enter configuration mode
	LDR R0,=RTC_BASE + RTC_CRL
	mov R2,#CNF
	BL waitRTC
	BL set_pin
	
	;RTC prescaler load (calibration)
	LDR R0,=RTC_BASE + RTC_PRLL
	MOV R2,#0x7FFF
	BL waitRTC
	STR R2,[R0]
	
	LDR R0,=RTC_BASE + RTC_PRLH
	MOV R2,#0x0000
	BL waitRTC
	STR R2,[R0]
	
	;;Setting time
	;LDR R0,=RTC_BASE + RTC_CNTL
	;lDR R2,=
	;BL waitRTC
	;STR R2,[R0]
	
	;LDR R0,=RTC_BASE + RTC_CNTH
	;lDR R2,=RSF
	;BL waitRTC
	;STR R2,[R0]
	
	;Exit configuration mode
	LDR R0,=RTC_BASE + RTC_CRL
	mov R2,#CNF
	BL waitRTC
	BL reset_pin

 	;Clearing RSF Bit
	LDR R0,=RTC_BASE + RTC_CRL
 	MOV R2,#RSF
  	BL waitRTC
   	BL reset_pin
 
	;Protect backup register from write access
	LDR R0,=PWR_BASE + PWR_CR
	MOV R2,#DBP
	BL set_pin
	
	POP {R0-R3,PC}
	ENDFUNC
	
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
	
waitRTC
	PUSH {R0-R3, LR}
	LDR R0,=RTC_BASE + RTC_CRL
__loopback
	LDR R1,[R0]
	AND R1, R1,#20
	CMP R1,#0
	BEQ __loopback
	POP {R0-R3, PC}
	
	
	END
