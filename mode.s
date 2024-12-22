
    INCLUDE constants.inc

	IMPORT RTC_READ
	IMPORT DIGIT_TO_ASCII
	IMPORT SENSOR_READ
	IMPORT BREAK_TIME
	IMPORT ERASE_TIME
    IMPORT DRAW_RECTANGLE_FILLED
	IMPORT REM
	IMPORT DELAY

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
		
	IMPORT DRAW_CLOCK_TXT
	IMPORT ERASE_CLOCK_TXT
		
    IMPORT DRAW_CLOCK
    IMPORT DRAW_ALARM
    IMPORT DRAW_TIMER

	EXPORT DRAW_IMAGE
    EXPORT GET_MODE
    EXPORT Update_Handler

	IMPORT DELAY
	AREA MYCODE, CODE, READONLY


GET_MODE FUNCTION
    ; R9 - Changes the R9 register with the current Mode
    
    PUSH {R0-R8, R10-R12, LR}

    LDR R0, =GPIOB_BASE + GPIOx_IDR

    MOV R11, #55000    
    ;BL DELAY

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

    POP {R0-R8, R10-R12, PC}
    ENDFUNC
	
DRAW_CLOCK_MODE FUNCTION 
    PUSH {R0-R7,R9-R12, LR}
	BL DRAW_MORNING
    MOV R8,#1
    POP {R0-R7,R9-R12, PC}
    ENDFUNC

DRAW_ALARM_MODE FUNCTION 
    PUSH {R0-R7,R9-R12, LR}
	BL DRAW_NIGHT
    MOV R8,#0
    POP {R0-R7,R9-R12, PC}
    ENDFUNC

DRAW_TIMER_MODE FUNCTION 
    PUSH {R0-R7,R9-R12, LR}
	BL DRAW_MORNING
    MOV R8,#1
    POP {R0-R7,R9-R12, PC}
    ENDFUNC

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Update_Handler
	;R0: Prev Mode
	;R8: Day:1 Night:0
	;R9: CLK:0 ALR:1 TIM:2
	;R10: Prev Time
	;R12: Prev Temp
	PUSH {R1-R7,R9,R11,LR}
	
	;This Function handles Update Logic for all modes simultaneously
	
	;Handling Mode Change
	CMP R9,R0
	BEQ __SKIP_MODE_CHANGE
	MOV R0,R9
	
	CMP R9,#0
	BNE __SKIP_CLK_CHANGE
	
	BL DRAW_CLOCK_MODE
	BL Update_CLK
	
__SKIP_CLK_CHANGE

	CMP R9,#1
	BNE __SKIP_ALR_CHANGE
	
	BL DRAW_ALARM_MODE
	BL Update_ALR
	
__SKIP_ALR_CHANGE

	CMP R9,#2
	BNE __SKIP_TIM_CHANGE
	
	BL DRAW_TIMER_MODE
	BL Update_TIM
	
__SKIP_TIM_CHANGE

	B __SKIP_ALL
__SKIP_MODE_CHANGE
	
	
	;Handling Updates
	CMP R9,#0
	BNE __SKIP_CLK_UPDATE
	
	BL Update_CLK
	
__SKIP_CLK_UPDATE

	CMP R9,#1
	BNE __SKIP_ALR_UPDATE
	
	BL Update_ALR
	
__SKIP_ALR_UPDATE

	CMP R9,#2
	BNE __SKIP_TIM_UPDATE
	
	BL Update_TIM
	
__SKIP_TIM_UPDATE


__SKIP_ALL
	POP {R1-R7,R9,R11,PC}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Update_CLK
	;R8: Day:1 Night:0
	;R10: Prev Time
	;R12: Prev Temp
	PUSH {R0-R9,R11,LR}
	;Handling temperature change
	BL SENSOR_READ
	CMP R12,R11
	BEQ	__SKIP_SENSOR_CHANGE
	
	MOV R12,R11
	BL REFRESH_TEMPERATURE
	
__SKIP_SENSOR_CHANGE

	;Reading and breaking time
	BL RTC_READ
	BL BREAK_TIME
	
	;Handling time change
	CMP R10,R3
	BEQ __SKIP_CLK_TIME_CHANGE
	
	MOV R10,R3
	BL REFRESH_CLK

__SKIP_CLK_TIME_CHANGE
	POP {R0-R9,R11,PC}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Update_ALR
	;R8: Day:1 Night:0
	;R10: Prev Time
	PUSH {R0-R9,R11-R12,LR}
	
	POP {R0-R9,R11-R12,PC}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Update_TIM
	;R8: Day:1 Night:0
	;R10: Prev Time
	PUSH {R0-R9,R11-R12,LR}
	
	POP {R0-R9,R11-R12,PC}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
REFRESH_TIM
	;R3: Minutes Input
	;R4: Hours Input
	;R5: Seconds Input
	;R8: Day:1 Night:0
	PUSH {R0-R12,LR}
	
	BL REFRESH_TIME
	BL REFRESH_CLOCK_MODE
	
	POP {R0-R12,PC}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
REFRESH_ALR
	;R3: Minutes Input
	;R4: Hours Input
	;R8: Day:1 Night:0
	PUSH {R0-R12,LR}
	
	BL REFRESH_TIME
	BL REFRESH_CLOCK_MODE
	
	POP {R0-R12,PC}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
REFRESH_CLK
	;R3: Minutes Input
	;R4: Hours Input
	;R5: Day Input
	;R6: Month Input
	;R7: Year Input
	;R8: Day:1 Night:0
	;R9: CLK:0 ALR:1 TIM:2
	;R11: Temperature
	PUSH {R0-R12,LR}
	
	BL REFRESH_TIME
	BL REFRESH_DATE
	BL REFRESH_TEMPERATURE
	BL REFRESH_CLOCK_MODE
	
	POP {R0-R12,PC}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
REFRESH_CLOCK_MODE
	;R9: CLK:0 ALR:1 TIM:2
	PUSH {R0-R12,LR}
	
	BL ERASE_CLOCK_TXT
	BL DRAW_CLOCK_TXT
	
	POP {R0-R12,PC}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
REFRESH_TIME
	;R3: Mintues Input
	;R4: Hours Input
	;R8: Day:1 Night:0
	PUSH {R0-R12,LR}
	
	BL ERASE_TIME
	BL DRAW_TIME
	
	POP {R0-R12,PC}
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
REFRESH_TEMPERATURE
	;R11: Temp
	;R8: Day:1 Night:0
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