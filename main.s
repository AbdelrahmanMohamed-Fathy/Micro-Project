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
	
;Extra Minutes between theme switch (When zero it changes every minute)
Time_Offset		EQU 1
	
	IMPORT LCD_INIT
	IMPORT DRAW_RECTANGLE_FILLED
	IMPORT RTC_INIT
	IMPORT RTC_READ
	IMPORT DIGIT_TO_ASCII
	IMPORT SENSOR_READ
	IMPORT SENSOR_INIT
	IMPORT BREAK_TIME
	IMPORT ERASE_TIME
	IMPORT TIM2_INIT

	IMPORT DRAW
	IMPORT DRAW_MORNING
	IMPORT DRAW_NIGHT
	IMPORT DRAW_LARGE
	IMPORT DRAW_TIME
		
	IMPORT DRAW_TIME
	IMPORT ERASE_TIME
	
	IMPORT DRAW_TEMPERATURE
	IMPORT ERASE_TEMPERATURE
	
	IMPORT DRAW_DATE
	IMPORT ERASE_DATE
	
	EXPORT DRAW_IMAGE
	EXPORT __main

	AREA	MYCODE, CODE, READONLY
	ENTRY
	
__main FUNCTION

	;CALL FUNCTION SETUP
	BL SETUP
	;Draw Background
	BL DRAW_MORNING
	MOV R8,#1
	BL RTC_READ
	BL BREAK_TIME
	MOV R0,R3 ;Time Diff Minutes
	MOV R9,R3 ;Theme Diff Minutes
	ADD R9,#Time_Offset 
	MOV R10,#WHITE
	BL SENSOR_READ
	;MOV R11,#23	;Debug value for TEMPERATURE print test
	MOV R12,R11
	BL REFRESH_ALL
__main_loop
	;Reads Time into R2
	BL RTC_READ
	
	;Handling Only Temperature change
	BL SENSOR_READ
	CMP R12,R11
	BEQ	__SKIP_SENSOR
	MOV R12,R11
	BL REFRESH_TEMPERATURE
__SKIP_SENSOR
	
	BL BREAK_TIME
	
	;Handling Full Theme Change
	CMP R9,R3
	BEQ __SKIP_THEME
	MOV R0,R3
	MOV R9,R3
	ADD R9,#Time_Offset;
	MVN R8,R8
	AND R8,#1
	CMP R8,#1
	BLEQ DRAW_MORNING
	CMP R8,#0
	BLEQ DRAW_NIGHT
	MOV R10,#WHITE
	BL REFRESH_ALL
	B __SKIP_ALL
__SKIP_THEME

	;Handling Only Time Change
	CMP R0,R3
	BEQ __SKIP_ALL
	BL REFRESH_TIME
	BL REFRESH_DATE
__SKIP_ALL
	B __main_loop
	ENDFUNC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
SETUP
	PUSH {R0-R2, LR}
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
	
	;Initializing TFT LCD
	BL LCD_INIT
	BL RTC_INIT
	BL SENSOR_INIT
	BL TIM2_INIT
	
	POP {R0-R2,PC}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
REFRESH_ALL
	;R3: Minutes Input
	;R4: Hours Input
	;R5: Day Input
	;R6: Month Input
	;R7: Year Input
	;R8: Day:1 Night:0
	;R10: Test Color
	PUSH {R0-R12,LR}
	
	BL REFRESH_TIME
	BL REFRESH_TEMPERATURE
	BL REFRESH_DATE
	
	POP {R0-R12,PC}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
REFRESH_TIME
	;R3: Mintues Input
	;R4: Hours Input
	;R8: Day:1 Night:0
	;R10: Color input
	PUSH {R0-R12,LR}
	
	BL ERASE_TIME
	BL DRAW_TIME
	
	POP {R0-R12,PC}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
REFRESH_TEMPERATURE
	;R11: Temp
	;R8: Day:1 Night:0
	;R10: Color input
	PUSH {R0-R12,LR}
	
	BL ERASE_TEMPERATURE
	BL DRAW_TEMPERATURE
	
	POP {R0-R12,PC}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
REFRESH_DATE
	;R5: Day Input
	;R6: Month Input
	;R7: Year Input
	;R8: Day:1 Night:0
	;R10: Color input
	PUSH {R0-R12,LR}
	
	BL ERASE_DATE
	BL DRAW_DATE
	
	POP {R0-R12,PC}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
DRAW_IMAGE
	; r0 - dx
	; r1 - dy
	; r9 - table address

    PUSH {R0-R12, LR}
	
    MOV R5, R0         ; base x
    MOV R6, R1         ; base y

    MOV R11, #0X1FF

DRAW_LOOP
    LDR R7, [R9], #4   ; Load packed start (x0 y0)
    LDR R8, [R9], #4   ; Load packed end (x1, y1)
    LDR R10, [R9], #4  ; Load color
    CMP R7, #0         ; Check if end of table
    BEQ END_DRAW

    MOV R0, R7, LSR #9 ; Extract x0
    AND R0, R0, R11 ; Mask lower 9 bits
    MOV R1, R7         ; Extract y0
    AND R1, R1, R11 ; Mask lower 9 bits

    MOV R3, R8, LSR #9 ; Extract x1
    AND R3, R3, R11 ; Mask lower 9 bits
    MOV R4, R8         ; Extract y1
    AND R4, R4, R11 ; Mask lower 9 bits

    ; x0 - R0, y0 - R1, x1 - R3, y1 - R4

    ADD R0, R5, R0
    ADD R1, R6, R1
    ADD R3, R5, R3
    ADD R4, R6, R4

    BL DRAW_RECTANGLE_FILLED
    B DRAW_LOOP

END_DRAW
    POP {R0-R12, PC}
	END