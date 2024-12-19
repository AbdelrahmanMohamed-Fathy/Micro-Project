;Bases
GPIOA_BASE 	EQU 0x40010800
GPIOB_BASE 	EQU 0X40010C00
RCC_BASE   	EQU 0x40021000
	
;RCC Offsets
RCC_APB2ENR EQU 0x18
	
;GPIOx Offsets
GPIOx_CRL 	EQU 0x00
GPIOx_CRH 	EQU 0x04
GPIOx_IDR 	EQU 0x08
GPIOx_ODR 	EQU 0x0C
	
;just some color codes, 16-bit colors coded in RGB 565
BLACK		EQU 0x0000
BLUE 		EQU 0x001F
RED  		EQU 0xF800
RED2   		EQU 0x4000
GREEN 		EQU 0x07E0
CYAN  		EQU 0x07FF
MAGENTA 	EQU 0xF81F
YELLOW		EQU 0xFFE0
WHITE 		EQU 0xFFFF
GREEN2 		EQU 0x2FA4
CYAN2 		EQU 0x07FF
	
; Letter spacing
LETTER_SPACING EQU 15
	
	
	
	;IMPORT DELAY
	IMPORT LCD_INIT
	IMPORT DRAW_RECTANGLE_FILLED
	IMPORT DRAW
	IMPORT RTC_INIT
	IMPORT RTC_READ
	IMPORT DIGIT_TO_ASCII
	IMPORT REG_TO_BCD
	IMPORT SENSOR_READ
		
	EXPORT __main

	AREA	MYCODE, CODE, READONLY
	ENTRY
	
__main FUNCTION

	;CALL FUNCTION SETUP
	BL SETUP

	
	
STOP B STOP

	ENDFUNC
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
SETUP
	PUSH {R0-R2,LR}
	;to enable port A
	LDR R0 ,=RCC_BASE + RCC_APB2ENR 
	LDR R1,[R0]
	LDR R2,=0x04
	ORR R1,R1,R2
	STR R1,[R0]
	
	;to configure port A as output(medium speed)
	LDR R0, =GPIOA_BASE + GPIOx_CRL 
	LDR R1,=0x11111111
	STR R1,[R0]
	LDR R0, =GPIOA_BASE + GPIOx_CRH
	LDR R1,=0x11111111
	STR R1,[R0]
	
	;Initializing TFT LCD
	BL LCD_INIT
	;BL RTC_INIT
	
	POP {R0-R2,PC}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


	END