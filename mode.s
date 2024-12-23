
    INCLUDE constants.inc

	IMPORT RTC_READ
	IMPORT DIGIT_TO_ASCII
	IMPORT SENSOR_READ
	IMPORT BREAK_TIME
    IMPORT DRAW_RECTANGLE_FILLED
	IMPORT REM
	IMPORT DELAY

	IMPORT DRAW
	IMPORT DRAW_MORNING
	IMPORT DRAW_NIGHT
	IMPORT DRAW_LARGE
	IMPORT DRAW_TIME
		
	IMPORT DRAW_TIME
    IMPORT ERASE_COLON
	IMPORT ERASE_TIME
	
	IMPORT DRAW_TEMPERATURE
	IMPORT ERASE_TEMPERATURE

	IMPORT DRAW_DATE
	IMPORT ERASE_DATE
    IMPORT DRAW_CLOCK
    IMPORT DRAW_ALARM
    IMPORT DRAW_TIMER
		
	IMPORT SET_ALARM
	IMPORT READ_ALARM
	IMPORT CLEAR_ALARM

	IMPORT DELAY
	IMPORT DELAY_uS

	EXPORT DRAW_IMAGE
    EXPORT GET_MODE
    EXPORT GET_CONFIG
    EXPORT DRAW_CURRENT_MODE
	EXPORT UPDATE_CURRENT_MODE
		

	AREA MYCODE, CODE, READONLY

GET_CONFIG FUNCTION    
    PUSH {R0, R2-R8, R11-R12, LR}

    LDR R0, =GPIOB_BASE + GPIOx_IDR
	LDR R11, =4000000
	BL DELAY
	

    LDR R2, [R0]
    LSR R2, R2, #CONFIG_BIT
    AND R2, R2, #1

    CMP R2, #1
    ADDEQ R1, R1, #1
    AND R1, R1, #1

    POP {R0, R2-R8, R11-R12, PC}
    ENDFUNC

GET_MODE FUNCTION
    ; R9 - Changes the R9 register with the current Mode
    
    PUSH {R0-R8, R11-R12, LR}

    LDR R0, =GPIOB_BASE + GPIOx_IDR

    LDR R1, [R0]
    LSR R1, R1, #MODE_BIT
    AND R1, R1, #1
    CMP R1, #1
    MOV R10, #0
    MOVEQ R10, #1
    ADDEQ R9, R9, #1

    ; Assuming we have (Clock - 0, Timer - 1, Alarm - 2)
    CMP R9, #3
    MOVEQ R9, #0

    POP {R0-R8, R11-R12, PC}
    ENDFUNC

DRAW_CURRENT_MODE FUNCTION 
    PUSH {R0-R12, LR}
    CMP R10, #0
    BEQ _skip_draw_mode

    CMP R9, #0
    BLEQ DRAW_CLOCK_MODE

    CMP R9, #1
    BLEQ DRAW_ALARM_MODE

    CMP R9, #2
    BLEQ DRAW_TIMER_MODE

    ; set previous minutes to unkown value
    MOV R0, #100
    BL UPDATE_CURRENT_MODE

_skip_draw_mode
    POP {R0-R12, PC}
    ENDFUNC

UPDATE_CURRENT_MODE FUNCTION 
    PUSH {R1-R12, LR}
    CMP R9, #0
    BLEQ UPDATE_CLOCK_MODE
    CMP R9, #1
    CMP R9, #2

    BL HANDLE_CONFIG_MODE
    POP {R1-R12, PC}	
	ENDFUNC

HANDLE_CONFIG_MODE FUNCTION 
    PUSH {R0-R12, LR}
    CMP R1, #0
    BEQ __NO_CONFIG
    MOV R8, #1
    BL ERASE_COLON

__NO_CONFIG
    POP {R0-R12, PC}
    ENDFUNC


UPDATE_CLOCK_MODE FUNCTION 
	PUSH {R1-R12, LR}
	MOV R8, #1
	MOV R10, #0xFFFF

	BL RTC_READ
	BL BREAK_TIME
    
    CMP R0, R3
	BEQ __SKIP_ALL
    MOV R0, R3

	BL DELAY
	BL SENSOR_READ
	MOV R12, R11

	BL REFRESH_ALL
__SKIP_ALL
	POP {R1-R12, PC}
	ENDFUNC

DRAW_CLOCK_MODE FUNCTION 
    PUSH {R0-R12, LR}
	BL DRAW_MORNING
    BL DRAW_CLOCK
    POP {R0-R12, PC}
    ENDFUNC

DRAW_ALARM_MODE FUNCTION 
    PUSH {R0-R12, LR}
    BL READ_ALARM
    MOV R12, R3
    BL BREAK_TIME
	MOV R10,#0xFFFF
	BL DRAW_NIGHT
    BL DRAW_TIME
    BL DRAW_ALARM
	
	
	LDR R0,=GPIOB_BASE + GPIOx_ODR
	MOV R2,#14
	CMP R12,#1
	BLEQ set_pin
	
	
    POP {R0-R12, PC}
    ENDFUNC

DRAW_TIMER_MODE FUNCTION 
    PUSH {R0-R12, LR}
    BL DRAW_MORNING
    BL DRAW_TIMER
    POP {R0-R12, PC}
    ENDFUNC

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