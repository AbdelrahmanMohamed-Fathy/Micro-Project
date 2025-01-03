	INCLUDE constants.inc
	IMPORT DELAY
	
	EXPORT LCD_INIT
	EXPORT LCD_COMMAND_WRITE
	EXPORT LCD_DATA_WRITE
	EXPORT DRAW_PIXEL
	EXPORT DRAW_RECTANGLE_FILLED
		
		
	AREA MYCODE, CODE, READONLY
	
LCD_INIT FUNCTION
	;This function executes the minimum needed LCD initialization measures
	;Only the necessary Commands are covered
	;Even tho there are so many more in the DataSheet

	;TODO: PUSH ANY NEEDED REGISTERS
	push {R0-R11,LR}

	;;;;;;;;;;;;;;;;; HARDWARE RESET (putting RST to high then low then high again) ;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;TODO: SET RESET PIN TO HIGH
	MOV R2, #TFT_RST
	BL set_pin

	;TODO: DELAY FOR SOME TIME (USE ANY FUNCTION AT THE BOTTOM OF THIS FILE)
	LDR R11,=TFT_INTERVAL
	bl DELAY

	;TODO: RESET RESET PIN TO LOW
	BL reset_pin

	;TODO: DELAY FOR SOME TIME (USE ANY FUNCTION AT THE BOTTOM OF THIS FILE)
	LDR R11,=TFT_INTERVAL
	BL DELAY

	;TODO: SET RESET PIN TO HIGH AGAIN
	BL set_pin
	

	;TODO: DELAY FOR SOME TIME (USE ANY FUNCTION AT THE BOTTOM OF THIS FILE)
	LDR R11,=TFT_INTERVAL
	bl DELAY
	
	;TODO: SET CS PIN HIGH
	MOV R2, #TFT_CS
	BL set_pin
	

	;TODO: SET WR PIN HIGH
	MOV R2, #TFT_WR
	BL set_pin

	;TODO: SET CS PIN LOW
	MOV R2, #TFT_CS
	BL reset_pin
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; SOFTWARE INITIALIZATION SEQUENCE ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;ISSUE THE "SET CONTRAST" COMMAND, ITS HEX CODE IS 0xC5
	MOV R2, #0xC5
	BL LCD_COMMAND_WRITE

	;THIS COMMAND REQUIRES 2 PARAMETERS TO BE SENT AS DATA, THE VCOM H, AND THE VCOM L
	;WE WANT TO SET VCOM H TO A SPECIFIC VOLTAGE WITH CORRESPONDS TO A BINARY CODE OF 1111111 OR 0x7F HEXA
	;SEND THE FIRST PARAMETER (THE VCOM H) NEEDED BY THE COMMAND, WITH HEX 0x7F, PARAMETERS ARE SENT AS DATA BUT COMMANDS ARE SENT AS COMMANDS
	MOV R2, #0x7F
	BL LCD_DATA_WRITE

	;WE WANT TO SET VCOM L TO A SPECIFIC VOLTAGE WITH CORRESPONDS TO A BINARY CODE OF 00000000 OR 0x00 HEXA
	;SEND THE SECOND PARAMETER (THE VCOM L) NEEDED BY THE CONTRAST COMMAND, WITH HEX 0x00, PARAMETERS ARE SENT AS DATA BUT COMMANDS ARE SENT AS COMMANDS
	MOV R2, #0x00
	BL LCD_DATA_WRITE

	;MEMORY ACCESS CONTROL AKA MADCLT | DATASHEET PAGE 193
	;WE WANT TO SET MX (to draw from left to right) AND SET MV (to configure the TFT to be in horizontal landscape mode, not a vertical screen)
	;TODO: ISSUE THE COMMAND MEMORY ACCESS CONTROL, HEXCODE 0x36
	mov r2,#0x36
	bl LCD_COMMAND_WRITE 
	
	;TODO: SEND ONE NEEDED PARAMETER ONLY WITH MX AND MV SET TO 1.
	mov r2,#0x28
	bl LCD_DATA_WRITE
	
	LDR R11,=TFT_INTERVAL
	BL DELAY

	;COLMOD: PIXEL FORMAT SET | DATASHEET PAGE 200
	;THIS COMMAND LETS US CHOOSE WHETHER WE WANT TO USE 16-BIT COLORS OR 18-BIT COLORS.
	;WE WILL ALWAYS USE 16-BIT COLORS
	;TODO: ISSUE THE COMMAND COLMOD
	mov r2,#0x3A
	bl LCD_COMMAND_WRITE 
	
	;TODO: SEND THE NEEDED PARAMETER WHICH CORRESPONDS TO 16-BIT RGB AND 16-BIT MCU INTERFACE FORMAT
	mov r2,#0x55
	bl LCD_DATA_WRITE
	
	;SLEEP OUT | DATASHEET PAGE 170
	;TODO: ISSUE THE SLEEP OUT COMMAND TO EXIT SLEEP MODE (THIS COMMAND TAKES NO PARAMETERS, JUST SEND THE COMMAND)
	mov r2,#0x11
	bl LCD_COMMAND_WRITE 
	
	;NECESSARY TO WAIT 5ms BEFORE SENDING NEXT COMMAND
	;I WILL WAIT FOR 10MSEC TO BE SURE
	;TODO: DELAY FOR AT LEAST 10ms
	LDR R11,=TFT_INTERVAL
	bl DELAY

	;DISPLAY ON | DATASHEET PAGE 176
	;TODO: ISSUE THE COMMAND, IT TAKES NO PARAMETERS
	mov r2,#0x29
	bl LCD_COMMAND_WRITE
	
	;COLOR INVERSION OFF | DATASHEET PAGE 173
	;NOTE: SOME TFTs HAS COLOR INVERTED BY DEFAULT, SO YOU WOULD HAVE TO INVERT THE COLOR MANUALLY SO COLORS APPEAR NATURAL
	;MEANING THAT IF THE COLORS ARE INVERTED WHILE YOU ALREADY TURNED OFF INVERSION, YOU HAVE TO TURN ON INVERSION NOT TURN IT OFF.
	;TODO: ISSUE THE COMMAND, IT TAKES NO PARAMETERS
	mov r2,#0x20
	bl LCD_COMMAND_WRITE
	
	;MEMORY WRITE | DATASHEET PAGE 181
	;WE NEED TO PREPARE OUR TFT TO SEND PIXEL DATA, MEMORY WRITE SHOULD ALWAYS BE ISSUED BEFORE ANY PIXEL DATA SENT
	;TODO: ISSUE MEMORY WRITE COMMAND
	mov r2,#0x2c
	bl LCD_COMMAND_WRITE
	
	
	mov r0, #0
	mov r1, #0
	mov r3, #480
	mov r4, #320
	mov r10, #BLACK
	bl DRAW_RECTANGLE_FILLED
		
	;TODO: POP ALL PUSHED REGISTERS
	pop{r0-r11,pc}
	ENDFUNC

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
LCD_COMMAND_WRITE FUNCTION
	;this function writes a command to the TFT, the command is read from R2
	;it writes LOW to RS first to specify that we are writing a command not data.
	;then it normally calls the function LCD_WRITE we just defined above
	;arguments: R2 = data to be written on D0-7 bus

	;TODO: PUSH ANY NEEDED REGISTERS
	push{r0-r12, lr}

	MOV R3, R2
	
	;;;;;;;;;;;;;;;;;;;;;;;;; SETTING RS to 0 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;TODO: SET RS TO 0 (to specify that we are writing commands not data on the D0-7 bus)
	MOV R2, #TFT_RS
	BL reset_pin
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	
	MOV R2, R3
	
	;TODO: CALL FUNCTION LCD_WRITE
	bl LCD_WRITE

	;TODO: POP ALL REGISTERS YOU PUSHED
	pop {r0-r12, pc}
	ENDFUNC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
LCD_DATA_WRITE FUNCTION
	;this function writes Data to the TFT, the data is read from R2
	;it writes HIGH to RS first to specify that we are writing actual data not a command.
	;arguments: R2 = data

	;TODO: PUSH ANY NEEDED REGISTERS
	push{r0-r12,lr}
	
	MOV R3, R2
	;;;;;;;;;;;;;;;;;;;; SETTING RS to 1 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;TODO: SET RS TO 1 (to specify that we are sending actual data not a command on the D0-7 bus)
	MOV R2, #TFT_RS
	BL set_pin
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	
	;TODO: CALL FUNCTION LCD_WRITE
	bl LCD_WRITE 

	;TODO: POP ANY REGISTER YOU PUSHED
	pop{r0-r12,pc}
	ENDFUNC
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
DRAW_PIXEL FUNCTION
	PUSH {R0-R12, LR}
	;THIS FUNCTION TAKES X AND Y AND A COLOR AND DRAWS THIS EXACT PIXEL
	;NOTE YOU HAVE TO CALL ADDRESS SET ON A SPECIFIC PIXEL WITH LENGTH 1 AND WIDTH 1 FROM THE STARTING COORDINATES OF THE PIXEL, THOSE STARTING COORDINATES ARE GIVEN AS PARAMETERS
	;THEN YOU SIMPLY ISSUE MEMORY WRITE COMMAND AND SEND THE COLOR
	;R0 = X
	;R1 = Y
	;R10 = COLOR

	;R0 = X1
	;R1 = X2
	;R3 = Y1
	;R4 = Y2

	;CHIP SELECT ACTIVE, WRITE LOW TO CS
	LDR r3, =TFT_BUS
	LDR r4, [r3]
	AND r4, r4, #0xFFFF7FFF
	STR r4, [r3]

	;TODO: SETTING PARAMETERS FOR FUNC 'ADDRESS_SET' CALL, THEN CALL FUNCTION ADDRESS SET
	;NOTE YOU MIGHT WANT TO PERFORM PARAMETER REORDERING, AS ADDRESS SET FUNCTION TAKES X1, X2, Y1, Y2 IN R0, R1, R3, R4 BUT THIS FUNCTION TAKES X,Y IN R0 AND R1
	MOV r0,r0
	mov r6,r1
	add r1,r0,#1
	mov r3,r6
	add r4,r3,#1
	BL ADDRESS_SET
	
	;MEMORY WRITE
	MOV R2, #0x2C
	BL LCD_COMMAND_WRITE


	;SEND THE COLOR DATA | DATASHEET PAGE 114
	;HINT: WE SEND THE HIGHER 8-BITS OF THE COLOR FIRST, THEN THE LOWER 8-BITS
	;HINT: WE SEND THE COLOR OF ONLY 1 PIXEL BY 2 DATA WRITES, THE FIRST TO SEND THE HIGHER 8-BITS OF THE COLOR, THE SECOND TO SEND THE LOWER 8-BITS OF THE COLOR
	;REMINDER: WE USE 16-BIT PER PIXEL COLOR
	;TODO: SEND THE SINGLE COLOR, PASSED IN R10
	MOV R2,R10,LSR #8
	BL LCD_DATA_WRITE
	MOV R2,R10
	BL LCD_DATA_WRITE
	
	POP {R0-r12, PC}
	ENDFUNC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
DRAW_RECTANGLE_FILLED FUNCTION
	;TODO: IMPLEMENT THIS FUNCTION ENTIRELY, AND SPECIFY THE ARGUMENTS IN COMMENTS, WE DRAW A RECTANGLE BY SPECIFYING ITS TOP-LEFT AND LOWER-RIGHT POINTS, THEN FILL IT WITH THE SAME COLOR
	;X1 = [] r0
	;Y1 = [] r1
	;X2 = [] r3
	;Y2 = [] r4
	;COLOR = [] r10
	push {r0-r12, LR}
	
	mov r5, r0;X1
	mov r6, r3;X2
	mov r7, r1;Y1
	mov r8, r4;Y2
	
	mov r0, r5
	mov r1, r6
	mov r3, r7
	mov r4, r8
	BL ADDRESS_SET

	subs r1, r1, r0
	moveq r1,#1
	subs r4, r4, r3
	moveq r4,#1
	
	mul r1, r1, r4 ; area in r1

colour_send_loop
	MOV R2,R10,LSR #8
	BL LCD_DATA_WRITE
	MOV R2,R10
	BL LCD_DATA_WRITE
	sub r1, r1, #1
	cmp r1,#0
	bge colour_send_loop
	
	
	
	POP {R0-R12, PC}
	ENDFUNC
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
LCD_WRITE
	;this function takes what is inside r2 and writes it to the tft
	;this function writes 8 bits only
	;later we will choose whether those 8 bits are considered a command, or just pure data
	;your job is to just write 8-bits (regardless if data or command) to PE0-7 and set WR appropriately
	;arguments: R2 = data to be written to the D0-7 bus

	;TODO: PUSH THE NEEDED REGISTERS TO SAVE THEIR CONTENTS. HINT: Push any register you will modify inside the function, and LR 
	push {R0-R3,LR}
	
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; SETTING WR to 0 ;;;;;;;;;;;;;;;;;;;;;
	;TODO: RESET WR TO 0
	MOV R2, #TFT_WR
	BL reset_pin
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;;;;;;;;;;;;; HERE YOU PUT YOUR DATA which is in R2 TO PE0-7 ;;;;;;;;;;;;;;;;;
	;TODO: SET PE0-7 WITH THE LOWER 8-bits of R2
	;only write the lower byte to PE0-7
	LDR R0,=TFT_BUS
	LDR R1, [R0]
	AND R1,R1,#0xFFFFFF00
	AND R3,R3,#0x0FF
	ORR R1,R1,R3
	STR R1,[R0]
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;;;;;;;;;;;;;;;;;;;;;;;;;; SETTING WR to 1 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	;TODO: SET WR TO 1 AGAIN (ie make a rising edge)
	MOV R2, #TFT_WR
	BL set_pin
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	
	;TODO: POP THE REGISTERS YOU JUST PUSHED, and PC
	pop {R0-R3,PC}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
ADDRESS_SET
	;THIS FUNCTION TAKES X1, X2, Y1, Y2
	;IT ISSUES COLUMN ADDRESS SET TO SPECIFY THE START AND END COLUMNS (X1 AND X2)
	;IT ISSUES PAGE ADDRESS SET TO SPECIFY THE START AND END PAGE (Y1 AND Y2)
	;THIS FUNCTION JUST MARKS THE PLAYGROUND WHERE WE WILL ACTUALLY DRAW OUR PIXELS, MAYBE TARGETTING EACH PIXEL AS IT IS.
	;R0 = X1
	;R1 = X2
	;R3 = Y1
	;R4 = Y2

	;PUSHING ANY NEEDED REGISTERS
	PUSH {R0-R4, LR}
	
	sub R1, R1, #1
	sub R4, R4, #1
	
	;COLUMN ADDRESS SET | DATASHEET PAGE 110
	MOV R2, #0x2A
	BL LCD_COMMAND_WRITE

	;TODO: SEND THE FIRST PARAMETER (HIGHER 8-BITS OF THE STARTING COLUMN, AKA HIGHER 8-BITS OF X1)	
	MOV R2, R0 ,LSR #8
	BL LCD_DATA_WRITE

	;TODO: SEND THE SECOND PARAMETER (LOWER 8-BITS OF THE STARTING COLUMN, AKA LOWER 8-BITS OF X1)
	MOV R2, R0
	BL LCD_DATA_WRITE

	;TODO: SEND THE THIRD PARAMETER (HIGHER 8-BITS OF THE ENDING COLUMN, AKA HIGHER 8-BITS OF X2)
	MOV R2, R1, LSR #8
	BL LCD_DATA_WRITE

	;TODO: SEND THE FOURTH PARAMETER (LOWER 8-BITS OF THE ENDING COLUMN, AKA LOWER 8-BITS OF X2)
	MOV R2, R1
	BL LCD_DATA_WRITE

	;PAGE ADDRESS SET | DATASHEET PAGE 110
	MOV R2, #0x2B
	BL LCD_COMMAND_WRITE

	;TODO: SEND THE FIRST PARAMETER (HIGHER 8-BITS OF THE STARTING PAGE, AKA HIGHER 8-BITS OF Y1)
	MOV R2, R3, LSR #8
	BL LCD_DATA_WRITE	
	
	;TODO: SEND THE SECOND PARAMETER (LOWER 8-BITS OF THE STARTING PAGE, AKA LOWER 8-BITS OF Y1)
	MOV R2, R3
	BL LCD_DATA_WRITE	

	;TODO: SEND THE THIRD PARAMETER (HIGHER 8-BITS OF THE ENDING PAGE, AKA HIGHER 8-BITS OF Y2)
	MOV R2, R4, LSR #8
	BL LCD_DATA_WRITE	

	;TODO: SEND THE FOURTH PARAMETER (LOWER 8-BITS OF THE ENDING PAGE, AKA LOWER 8-BITS OF Y2)
	MOV R2, R4
	BL LCD_DATA_WRITE	

	;MEMORY WRITE
	MOV R2, #0x2C
	BL LCD_COMMAND_WRITE

	;POPPING ALL REGISTERS I PUSHED
	POP {R0-R4, PC}
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
set_pin ; pin location in r2
	PUSH {R0-R3, LR}
	LDR R0, =TFT_BUS
	LDR R1, [R0]
	MOV R3, #1
	LSL R3, R3, R2
	ORR R1, R3, R1
	STR R1, [R0]
	POP {R0-R3, PC}

reset_pin ; pin location in r2
	PUSH {R0-R3, LR}
	LDR R0, =TFT_BUS
	LDR R1, [R0]
	MOV R3, #1
	LSL R3, R3, R2
	MVN R3, R3
	AND R1, R1, R3
	STR R1, [R0]
	POP {R0-R3, PC}


	END