
	INCLUDE constants.inc
	EXPORT RTC_INIT
	EXPORT RTC_READ
	
	IMPORT DELAY
	
	AREA	MYCODE, CODE, READONLY
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;	
RTC_READ FUNCTION
	;Returns RTC counter in R2
	;R2: RTC counter
	PUSH {R0-R1,LR}
	LDR R0,=RTC_BASE + RTC_CNTH
	LDR R1,[R0]
	LSL R1,#16
	LDR R0,=RTC_BASE + RTC_CNTL
	LDR R2,[R0]
	ADD R2,R2,R1
	LDR R0,=RTC_BASE + RTC_CRL
	LDR R3,[R0]
	POP {R0-R1,PC}
	ENDFUNC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
RTC_INIT FUNCTION
	PUSH {R0-R3,R11,LR}
	
	;Enabling PWR and BKP
	LDR R0,=RCC_BASE + RCC_APB1ENR
	MOV R2,#BKPEN
	BL set_pin

	LDR R0,=RCC_BASE + RCC_APB1ENR
	MOV R2,#PWREN
	BL set_pin
	
	;Remove protection from backup registers
	LDR R0,=PWR_BASE + PWR_CR
	MOV R2,#DBP
	BL set_pin
	
	;Resetting BDR
	LDR R0,=RCC_BASE + RCC_BDCR
	MOV R2,#16
	BL set_pin
	
	LDR R11,=TFT_INTERVAL
	BL DELAY
	
	LDR R0,=RCC_BASE + RCC_BDCR
	MOV R2,#16
	BL reset_pin
	
	LDR R11,=TFT_INTERVAL
	BL DELAY
	
	;Enabling LSI
	LDR R0,=RCC_BASE + RCC_CSR
	MOV R2,#0
	BL set_pin
	
	BL waitLSI
	
	;Setting RTCSEL[1:0] to 10 (LSI)
	LDR R0,=RCC_BASE + RCC_BDCR
	MOV R2,#RTCSEL1
	BL set_pin
	
	LDR R0,=RCC_BASE + RCC_BDCR
	MOV R2,#RTCSEL0
	BL reset_pin
	
	;Setting RTCEN
	LDR R0,=RCC_BASE + RCC_BDCR
	MOV R2,#RTCEN
	BL set_pin
	
	;Enter configuration mode
	LDR R0,=RTC_BASE + RTC_CRL
	mov R2,#CNF
	BL waitRTC
	BL set_pin
	
	;Clearing Alarm
	LDR R0,=RTC_BASE + RTC_CRL
 	MOV R2,#1
  	BL waitRTC
   	BL reset_pin
	
	;Clearing Seconds Flag
	LDR R0,=RTC_BASE + RTC_CRL
	MOV R2,#0
	BL waitRTC
	BL reset_pin
	
	;Clearing RSF Bit
	LDR R0,=RTC_BASE + RTC_CRL
 	MOV R2,#RSF
  	BL waitRTC
   	BL reset_pin
	
	;RTC prescaler load (calibration)
	LDR R0,=RTC_BASE + RTC_PRLL
	MOV R2,#0x9C3F
	BL waitRTC
	STR R2,[R0]
	
	LDR R0,=RTC_BASE + RTC_PRLH
	MOV R2,#0x0000
	BL waitRTC
	STR R2,[R0]
	
	;Setting time
	LDR R0,=RTC_BASE + RTC_CNTH
	LDR R2,=0x65EC 
	BL waitRTC
	STR R2,[R0]
	
	LDR R0,=RTC_BASE + RTC_CNTL
	LDR R2,=0xF7C4
	BL waitRTC
	STR R2,[R0]
	
	;Exit configuration mode
	LDR R0,=RTC_BASE + RTC_CRL
	mov R2,#CNF
	BL waitRTC
	BL reset_pin
	
	BL waitRTC
	;Protect backup register from write access
	LDR R0,=PWR_BASE + PWR_CR
	MOV R2,#DBP
	BL reset_pin
	
	POP {R0-R3,R11,PC}
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
__loopback1
	LDR R1,[R0]
	AND R1, R1,#0x20
	CMP R1,#0
	BEQ __loopback1
	POP {R0-R3, PC}
	
waitLSI
	PUSH {R0-R3, LR}
	LDR R0,=RCC_BASE + RCC_CSR
__loopback2
	LDR R1,[R0]
	AND R1, R1,#0x2
	CMP R1,#0
	BEQ __loopback2
	POP {R0-R3, PC}
	
	END
