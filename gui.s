	INCLUDE constants.inc
	
	IMPORT REM
	IMPORT DRAW_RECTANGLE_FILLED
	IMPORT DRAW
	IMPORT DRAW_LARGE
	IMPORT DIGIT_TO_ASCII
	IMPORT DRAW_MONTH
	IMPORT DRAW_DAY
		
	IMPORT DRAW_CLOCK
	IMPORT DRAW_ALARM
	IMPORT DRAW_TIMER
		
	EXPORT DRAW_CLOCK_TXT
	EXPORT ERASE_CLOCK_TXT

	EXPORT DRAW_TIME
	EXPORT ERASE_TIME
		
	EXPORT DRAW_TEMPERATURE
	EXPORT ERASE_TEMPERATURE
		
	EXPORT DRAW_DATE
	EXPORT ERASE_DATE
	
	AREA mycode, CODE, READONLY

DRAW_TIME FUNCTION
	;Draws time from input Hours in R4 and Minutes in R3
	;Minutes: R3
	;Hours: R4
	PUSH {R0-R12, LR}
	MOV R10,#WHITE
	;Drawing Hours
	LDR R0,=Time_pos_x
	LDR R1,=Time_pos_y
	MOV R6,R4
	MOV R7,#10
	BL REM
	BL DIGIT_TO_ASCII
	BL DRAW_LARGE
	ADD R0,#Char_big_size_x
	MOV R2,R5
	BL DIGIT_TO_ASCII
	BL DRAW_LARGE
	ADD R0,#Char_big_size_x
	
	;Drawing ':'
	MOV R2,#':'
	BL DRAW_LARGE
	ADD R0,#Char_big_size_x
	
	;Drawing Minutes
	MOV R6,R3
	MOV R7,#10
	BL REM
	BL DIGIT_TO_ASCII
	BL DRAW_LARGE
	ADD R0,#Char_big_size_x
	MOV R2,R5
	BL DIGIT_TO_ASCII
	BL DRAW_LARGE
	
	POP {R0-R12, PC}
	ENDFUNC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ERASE_TIME FUNCTION
	;R8: Day:1 Night:0 Input
	PUSH {R0-R12,LR}
	MOV R0,#Time_pos_x
	MOV R1,#Time_pos_y
	MOV R3,#Time_pos_x + (Char_big_size_x*5)
	MOV R4,#Time_pos_y + Char_big_size_y - 15
	BL SET_COLOR
	BL DRAW_RECTANGLE_FILLED
	POP {R0-R12,PC}
	ENDFUNC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
DRAW_TEMPERATURE FUNCTION
	;R11: Temp
	PUSH {R0-R12,LR}
	MOV R10,#WHITE
	LDR R0,=Temp_pos_x
	LDR R1,=Temp_pos_y
	MOV R6,R11
	MOV R7,#10
	BL REM
	BL DIGIT_TO_ASCII
	BL DRAW
	ADD R0,#Char_small_size_x
	MOV R2,R5
	BL DIGIT_TO_ASCII
	BL DRAW
	ADD R0,#Char_small_size_x
	MOV R2,#1000
	BL DRAW
	ADD R0,#Char_small_size_x
	MOV R2,#'C'
	BL DRAW
	POP {R0-R12,PC}
	ENDFUNC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ERASE_TEMPERATURE FUNCTION
	;R8: Day:1 Night:0 Input
	PUSH {R0-R12,LR}
	MOV R0,#Temp_pos_x
	MOV R1,#Temp_pos_y
	MOV R3,#Temp_pos_x + (Char_small_size_x*4)
	MOV R4,#Temp_pos_y + Char_small_size_y - 5
	BL SET_COLOR
	BL DRAW_RECTANGLE_FILLED
	POP {R0-R12,PC}
	ENDFUNC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
DRAW_DATE FUNCTION
	;R5: Day Input
	;R6: Month Input
	;R7: Year Input
	PUSH {R0-R12,LR}
	MOV R10,#WHITE
	;Drawing the Day/Month
	PUSH {R7}
	PUSH {R6}
	PUSH {R5}
	MOV R0,#30
	SUB R6,#1
	SUB R5,#1
	MUL R8, R6, R0
	ADD R8, R8, R5
	MOV R6,R8
	MOV R7,#7
	BL REM
	MOV R8,R5
	LDR R0,=Day_pos_x
	LDR R1,=Day_pos_y
	BL DRAW_DAY
	
	POP {R5}
	LDR R0,=Month_pos_x
	LDR R1,=Month_pos_y
	MOV R6,R5
	MOV R7,#10
	BL REM
	BL DIGIT_TO_ASCII
	BL DRAW
	ADD R0,#Char_small_size_x
	MOV R2,R5
	BL DIGIT_TO_ASCII
	BL DRAW
	ADD R0,#Char_small_size_x*2
	POP {R6}
	BL DRAW_MONTH
	
	;Drawing Year
	POP {R7}
	LDR R0,=Year_pos_x
	LDR R1,=Year_pos_y
	MOV R6,R7
	MOV R7,#1000
	BL REM
	BL DIGIT_TO_ASCII
	BL DRAW
	ADD R0,#Char_small_size_x
	
	MOV R6,R5
	MOV R7,#100
	BL REM
	BL DIGIT_TO_ASCII
	BL DRAW
	ADD R0,#Char_small_size_x
	
	MOV R6,R5
	MOV R7,#10
	BL REM
	BL DIGIT_TO_ASCII
	BL DRAW
	ADD R0,#Char_small_size_x
	
	MOV R2,R5
	BL DIGIT_TO_ASCII
	BL DRAW
	ADD R0,#Char_small_size_x
	POP {R0-R12,PC}
	ENDFUNC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ERASE_DATE FUNCTION
	;R8: Day:1 Night:0 Input
	PUSH {R0-R12,LR}
	MOV R0,#Day_pos_x
	MOV R1,#Day_pos_y
	MOV R3,#Month_pos_x + (Char_small_size_x*6)
	MOV R4,#Month_pos_y + Char_small_size_y - 5
	BL SET_COLOR
	BL DRAW_RECTANGLE_FILLED
	
	MOV R0,#Year_pos_x
	MOV R1,#Year_pos_y
	MOV R3,#Year_pos_x + (Char_small_size_x*4)
	MOV R4,#Year_pos_y + Char_small_size_y - 5
	BL SET_COLOR
	BL DRAW_RECTANGLE_FILLED
	POP {R0-R12,PC}
	ENDFUNC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
SET_COLOR FUNCTION
	;R8: Day:1 Night:0
	PUSH {R0-R9,R11-R12,LR}
	CMP R8,#1
	BNE __NIGHT
__DAY
	MOV R10,#19902
	B __COLOR_OUT
__NIGHT
	MOV R10,#0
	B __COLOR_OUT
__COLOR_OUT
	POP {R0-R9,R11-R12,PC}
	ENDFUNC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
DRAW_CLOCK_TXT FUNCTION
	;R9: CLK:0 ALR:1 TIM:2
	PUSH {R0-R12,LR}
	MOV R10,#WHITE
	
	CMP R9,#0
	BLEQ DRAW_CLOCK
	
	CMP R9,#1
	BLEQ DRAW_ALARM
	
	CMP R9,#2
	BLEQ DRAW_TIMER
	
	POP {R0-R12,PC}
	ENDFUNC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ERASE_CLOCK_TXT FUNCTION
	PUSH {R0-R12,LR}
	;R8: Day:1 Night:0
	MOV R0,#Mode_pos_x
	MOV R1,#Mode_pos_y
	MOV R3,#Mode_pos_x + (Char_small_size_x*5)
	MOV R4,#Mode_pos_y + Char_small_size_y - 5
	BL SET_COLOR
	BL DRAW_RECTANGLE_FILLED
	POP {R0-R12,PC}
	ENDFUNC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


	END