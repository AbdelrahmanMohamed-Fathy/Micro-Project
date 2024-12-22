	INCLUDE constants.inc
	IMPORT LCD_INIT
	IMPORT RTC_INIT
	IMPORT SENSOR_INIT
	IMPORT TIM2_INIT
	
	IMPORT GET_MODE
	IMPORT GET_CONFIG
	IMPORT DRAW_CURRENT_MODE
	IMPORT UPDATE_CURRENT_MODE


	EXPORT __main

	AREA	MYCODE, CODE, READONLY
	ENTRY
	
	; R0 previous time
	; R1 configuration mode (0 - no, 1 - yes)
	; R9 current mode (0 - Clock, 1 - Alarm, 2 - Timer)
	; R10 specifies whether to draw or not #1 means draw, #0 means don't draw
__main FUNCTION
	MOV R0, #100; 
	MOV R1, #0
	MOV R9, #0 
	MOV R10,#1
	BL SETUP
main_loop
	BL DRAW_CURRENT_MODE
	BL UPDATE_CURRENT_MODE
	BL GET_CONFIG
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
	BL SENSOR_INIT
	BL TIM2_INIT
	
	POP {R0-R12,PC}
	END