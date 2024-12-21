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
	IMPORT RTC_INIT
	IMPORT RTC_READ
	IMPORT DIGIT_TO_ASCII
	IMPORT SENSOR_READ
	IMPORT SENSOR_INIT
	IMPORT BREAK_TIME

	IMPORT DRAW
	IMPORT DRAW_MORNING
	IMPORT DRAW_NIGHT
	IMPORT DRAW_LARGE
	IMPORT DRAW_TIME
	
	EXPORT DRAW_IMAGE
	EXPORT __main

	AREA	MYCODE, CODE, READONLY
	ENTRY
	
__main FUNCTION

	;CALL FUNCTION SETUP
	BL SETUP

__main_loop
	;Reads Time into R2
	BL RTC_READ
	
	BL BREAK_TIME
	
	MOV R10,#WHITE
	;Draw Background
	BL DRAW_MORNING
	BL DRAW_TIME
	; R0: x
	; R1: y
	; R2: ASCII character
	; R10: color
	;MOV R0, #240
	;MOV R1, #130
	;MOV R10,#WHITE
	;BL DRAW
	
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
	LDR R1,=0x11111111
	STR R1,[R0]
	LDR R0, =GPIOA_BASE + GPIOx_CRH
	LDR R1,=0x11111111
	STR R1,[R0]
	
	;Initializing TFT LCD
	BL LCD_INIT
	BL RTC_INIT
	;BL SENSOR_INIT
	
	POP {R0-R2,PC}
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