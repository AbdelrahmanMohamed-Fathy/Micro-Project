;Bases
GPIOA_BASE 		EQU 0x40010800
GPIOB_BASE 		EQU 0X40010C00
RCC_BASE   		EQU 0x40021000
	
;RCC Offsets
RCC_APB2ENR 	EQU 0x18
	
;GPIOx Offsets
GPIOx_CRL 		EQU 0x00
GPIOx_CRH 		EQU 0x04
GPIOx_IDR 		EQU 0x08
GPIOx_ODR 		EQU 0x0C
	
;just some color codes, 16-bit colors coded in RGB 565
BLACK			EQU 0x0000
BLUE 			EQU 0x001F
RED  			EQU 0xF800
RED2   			EQU 0x4000
GREEN 			EQU 0x07E0
CYAN  			EQU 0x07FF
MAGENTA 		EQU 0xF81F
YELLOW			EQU 0xFFE0
WHITE 			EQU 0xFFFF
GREEN2 			EQU 0x2FA4
CYAN2 			EQU 0x07FF
	
; Letter spacing
LETTER_SPACING 	EQU 15
	
;Minutes between theme switch (Theme changes after Time_Offset)
Time_Offset		EQU 2
	
TFT_INTERVAL 		EQU 0x4FFFFF
	
	IMPORT LCD_INIT
	IMPORT RTC_INIT
	IMPORT SENSOR_INIT
	IMPORT TIM2_INIT
	
	IMPORT GET_MODE
	IMPORT DRAW_CURRENT_MODE


	EXPORT __main

	AREA	MYCODE, CODE, READONLY
	ENTRY
	
	; Start in clock mode R9 Contains the current mode (0 - Clock, 1 - Alarm, 2 - Timer)
	; R10 specifies whether to draw or not #1 means draw, #0 means don't draw
__main FUNCTION
	MOV R9, #0
	MOV R10,#1
	BL SETUP
main_loop
	BL DRAW_CURRENT_MODE
	BL GET_MODE
	B main_loop
	ENDFUNC

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
SETUP
	PUSH {R0-R12, LR}
	;to enable port A
	LDR R0 ,=RCC_BASE + RCC_APB2ENR 
	LDR R1,[R0]
	LDR R2,=0x04
	ORR R1,R1,R2
	STR R1,[R0]
	
	;to configure port A as output(medium speed)
	LDR R0, =GPIOA_BASE + GPIOx_CRL 
	LDR R1,=0x33333333
	STR R1,[R0]
	LDR R0, =GPIOA_BASE + GPIOx_CRH
	LDR R1,=0x33333333
	STR R1,[R0]

	;to enable port B
	LDR R0 ,=RCC_BASE + RCC_APB2ENR 
	LDR R1,[R0]
	LDR R2,=0x08
	ORR R1,R1,R2
	STR R1,[R0]

	;to configure port B as input(medium speed)
	LDR R0, =GPIOB_BASE + GPIOx_CRL 
	LDR R1,=0x88888888
	STR R1,[R0]
	LDR R0, =GPIOB_BASE + GPIOx_CRH
	LDR R1,=0x88888888
	STR R1,[R0]

	;Enabling B0,B10,B11,B12,B13
	
	;Initializing TFT LCD
	BL LCD_INIT
	BL RTC_INIT
	;BL SENSOR_INIT
	;BL TIM2_INIT
	
	POP {R0-R12,PC}
	END