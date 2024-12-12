;Bases
RCC_BASE EQU 0x40021000
GPIOA_BASE EQU 0x40010800
GPIOB_BASE EQU 0X40010C00
;RCC Offsets
RCC_APB2ENR EQU 0x18
;GPIOx Offsets
GPIOx_CRL EQU 0x00
GPIOx_CRH EQU 0x04
GPIOx_ODR EQU 0x0C
GPIOx_IDR EQU 0x08
;TFT Bindings
TFT_BUS EQU GPIOA_BASE + GPIOx_ODR
TFT_RST EQU 11
TFT_CS EQU 10
TFT_RS EQU 9
TFT_WR EQU 8
BLACK	EQU   	0x0000
	
	EXPORT __main
	IMPORT LCD_INIT
	IMPORT DRAW_RECTANGLE_FILLED
	IMPORT LCD_COMMAND_WRITE
	IMPORT LCD_DATA_WRITE

	AREA	MYCODE, CODE, READONLY
	ENTRY
	
__main FUNCTION

	;CALL FUNCTION SETUP
	BL SETUP
	mov r0,#0
	mov r1,#0
	mov r10,#BLACK
	BL DRAW_L

	
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
	bl LCD_INIT
	
	POP {R0-R2,PC}
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	LTORG
DRAW_L
	; Draws 'l' starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R10: color


	PUSH {R0-R12, LR}

	MOV R5, R0 ; base x
	MOV R6, R1 ; base y

	ADD R0, R5, #71
	ADD R1, R6, #10
	ADD R3, R5, #72
	ADD R4, R6, #66
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #17
	ADD R1, R6, #13
	ADD R3, R5, #18
	ADD R4, R6, #24
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #72
	ADD R1, R6, #13
	ADD R3, R5, #73
	ADD R4, R6, #17
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #18
	ADD R1, R6, #14
	ADD R3, R5, #19
	ADD R4, R6, #40
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #19
	ADD R1, R6, #17
	ADD R3, R5, #20
	ADD R4, R6, #56
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #70
	ADD R1, R6, #17
	ADD R3, R5, #71
	ADD R4, R6, #69
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #38
	ADD R1, R6, #18
	ADD R3, R5, #42
	ADD R4, R6, #70
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #42
	ADD R1, R6, #18
	ADD R3, R5, #45
	ADD R4, R6, #69
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #45
	ADD R1, R6, #18
	ADD R3, R5, #46
	ADD R4, R6, #67
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #46
	ADD R1, R6, #18
	ADD R3, R5, #47
	ADD R4, R6, #65
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #47
	ADD R1, R6, #18
	ADD R3, R5, #49
	ADD R4, R6, #22
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #49
	ADD R1, R6, #18
	ADD R3, R5, #52
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #72
	ADD R1, R6, #18
	ADD R3, R5, #73
	ADD R4, R6, #24
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #20
	ADD R1, R6, #19
	ADD R3, R5, #21
	ADD R4, R6, #54
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #35
	ADD R1, R6, #19
	ADD R3, R5, #45
	ADD R4, R6, #69
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #52
	ADD R1, R6, #19
	ADD R3, R5, #56
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #33
	ADD R1, R6, #20
	ADD R3, R5, #45
	ADD R4, R6, #68
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #56
	ADD R1, R6, #20
	ADD R3, R5, #58
	ADD R4, R6, #21
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #32
	ADD R1, R6, #21
	ADD R3, R5, #45
	ADD R4, R6, #68
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #21
	ADD R1, R6, #22
	ADD R3, R5, #22
	ADD R4, R6, #54
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #30
	ADD R1, R6, #22
	ADD R3, R5, #46
	ADD R4, R6, #67
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #51
	ADD R1, R6, #22
	ADD R3, R5, #53
	ADD R4, R6, #56
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #69
	ADD R1, R6, #22
	ADD R3, R5, #71
	ADD R4, R6, #69
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #23
	ADD R1, R6, #23
	ADD R3, R5, #24
	ADD R4, R6, #52
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #24
	ADD R1, R6, #23
	ADD R3, R5, #25
	ADD R4, R6, #24
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #26
	ADD R1, R6, #23
	ADD R3, R5, #57
	ADD R4, R6, #24
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #22
	ADD R1, R6, #24
	ADD R3, R5, #23
	ADD R4, R6, #53
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #25
	ADD R1, R6, #24
	ADD R3, R5, #26
	ADD R4, R6, #25
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #27
	ADD R1, R6, #24
	ADD R3, R5, #61
	ADD R4, R6, #48
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #24
	ADD R1, R6, #25
	ADD R3, R5, #25
	ADD R4, R6, #26
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #26
	ADD R1, R6, #25
	ADD R3, R5, #62
	ADD R4, R6, #48
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #68
	ADD R1, R6, #25
	ADD R3, R5, #73
	ADD R4, R6, #26
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #25
	ADD R1, R6, #26
	ADD R3, R5, #26
	ADD R4, R6, #49
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #62
	ADD R1, R6, #26
	ADD R3, R5, #64
	ADD R4, R6, #67
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #24
	ADD R1, R6, #27
	ADD R3, R5, #25
	ADD R4, R6, #50
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #64
	ADD R1, R6, #27
	ADD R3, R5, #65
	ADD R4, R6, #67
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #65
	ADD R1, R6, #28
	ADD R3, R5, #66
	ADD R4, R6, #66
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #66
	ADD R1, R6, #29
	ADD R3, R5, #67
	ADD R4, R6, #66
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #67
	ADD R1, R6, #30
	ADD R3, R5, #68
	ADD R4, R6, #66
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #72
	ADD R1, R6, #31
	ADD R3, R5, #73
	ADD R4, R6, #45
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #68
	ADD R1, R6, #32
	ADD R3, R5, #71
	ADD R4, R6, #67
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #18
	ADD R1, R6, #43
	ADD R3, R5, #20
	ADD R4, R6, #56
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #72
	ADD R1, R6, #47
	ADD R3, R5, #73
	ADD R4, R6, #56
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #28
	ADD R1, R6, #48
	ADD R3, R5, #46
	ADD R4, R6, #66
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #47
	ADD R1, R6, #48
	ADD R3, R5, #48
	ADD R4, R6, #64
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #48
	ADD R1, R6, #48
	ADD R3, R5, #49
	ADD R4, R6, #62
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #49
	ADD R1, R6, #48
	ADD R3, R5, #50
	ADD R4, R6, #60
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #50
	ADD R1, R6, #48
	ADD R3, R5, #51
	ADD R4, R6, #58
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #53
	ADD R1, R6, #48
	ADD R3, R5, #57
	ADD R4, R6, #70
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #57
	ADD R1, R6, #48
	ADD R3, R5, #59
	ADD R4, R6, #69
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #59
	ADD R1, R6, #48
	ADD R3, R5, #62
	ADD R4, R6, #68
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #27
	ADD R1, R6, #49
	ADD R3, R5, #46
	ADD R4, R6, #66
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #26
	ADD R1, R6, #52
	ADD R3, R5, #47
	ADD R4, R6, #65
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #52
	ADD R1, R6, #56
	ADD R3, R5, #57
	ADD R4, R6, #70
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #25
	ADD R1, R6, #57
	ADD R3, R5, #26
	ADD R4, R6, #66
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #51
	ADD R1, R6, #58
	ADD R3, R5, #52
	ADD R4, R6, #71
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #50
	ADD R1, R6, #61
	ADD R3, R5, #52
	ADD R4, R6, #71
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #49
	ADD R1, R6, #63
	ADD R3, R5, #72
	ADD R4, R6, #66
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #24
	ADD R1, R6, #64
	ADD R3, R5, #47
	ADD R4, R6, #65
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #29
	ADD R1, R6, #66
	ADD R3, R5, #46
	ADD R4, R6, #67
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #31
	ADD R1, R6, #67
	ADD R3, R5, #45
	ADD R4, R6, #68
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #49
	ADD R1, R6, #67
	ADD R3, R5, #50
	ADD R4, R6, #72
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #37
	ADD R1, R6, #69
	ADD R3, R5, #42
	ADD R4, R6, #70
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #43
	ADD R1, R6, #69
	ADD R3, R5, #45
	ADD R4, R6, #71
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #48
	ADD R1, R6, #69
	ADD R3, R5, #50
	ADD R4, R6, #72
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #39
	ADD R1, R6, #70
	ADD R3, R5, #42
	ADD R4, R6, #71
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #45
	ADD R1, R6, #70
	ADD R3, R5, #46
	ADD R4, R6, #72
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #44
	ADD R1, R6, #71
	ADD R3, R5, #47
	ADD R4, R6, #72
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #46
	ADD R1, R6, #72
	ADD R3, R5, #47
	ADD R4, R6, #75
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #47
	ADD R1, R6, #73
	ADD R3, R5, #48
	ADD R4, R6, #97
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #21
	ADD R1, R6, #74
	ADD R3, R5, #23
	ADD R4, R6, #76
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #48
	ADD R1, R6, #74
	ADD R3, R5, #49
	ADD R4, R6, #96
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #23
	ADD R1, R6, #75
	ADD R3, R5, #25
	ADD R4, R6, #77
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #22
	ADD R1, R6, #76
	ADD R3, R5, #26
	ADD R4, R6, #77
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #36
	ADD R1, R6, #76
	ADD R3, R5, #37
	ADD R4, R6, #82
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #37
	ADD R1, R6, #76
	ADD R3, R5, #38
	ADD R4, R6, #81
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #43
	ADD R1, R6, #76
	ADD R3, R5, #50
	ADD R4, R6, #77
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #24
	ADD R1, R6, #77
	ADD R3, R5, #28
	ADD R4, R6, #78
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #34
	ADD R1, R6, #77
	ADD R3, R5, #36
	ADD R4, R6, #83
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #38
	ADD R1, R6, #77
	ADD R3, R5, #39
	ADD R4, R6, #80
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #44
	ADD R1, R6, #77
	ADD R3, R5, #45
	ADD R4, R6, #98
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #45
	ADD R1, R6, #77
	ADD R3, R5, #48
	ADD R4, R6, #97
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #49
	ADD R1, R6, #77
	ADD R3, R5, #50
	ADD R4, R6, #96
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #50
	ADD R1, R6, #77
	ADD R3, R5, #52
	ADD R4, R6, #95
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #53
	ADD R1, R6, #77
	ADD R3, R5, #56
	ADD R4, R6, #93
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #63
	ADD R1, R6, #77
	ADD R3, R5, #65
	ADD R4, R6, #89
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #65
	ADD R1, R6, #77
	ADD R3, R5, #66
	ADD R4, R6, #88
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #25
	ADD R1, R6, #78
	ADD R3, R5, #40
	ADD R4, R6, #79
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #52
	ADD R1, R6, #78
	ADD R3, R5, #53
	ADD R4, R6, #94
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #56
	ADD R1, R6, #78
	ADD R3, R5, #57
	ADD R4, R6, #102
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #57
	ADD R1, R6, #78
	ADD R3, R5, #58
	ADD R4, R6, #101
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #59
	ADD R1, R6, #78
	ADD R3, R5, #62
	ADD R4, R6, #90
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #62
	ADD R1, R6, #78
	ADD R3, R5, #65
	ADD R4, R6, #89
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #26
	ADD R1, R6, #79
	ADD R3, R5, #29
	ADD R4, R6, #89
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #29
	ADD R1, R6, #79
	ADD R3, R5, #30
	ADD R4, R6, #88
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #30
	ADD R1, R6, #79
	ADD R3, R5, #31
	ADD R4, R6, #87
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #31
	ADD R1, R6, #79
	ADD R3, R5, #32
	ADD R4, R6, #86
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #32
	ADD R1, R6, #79
	ADD R3, R5, #33
	ADD R4, R6, #85
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #33
	ADD R1, R6, #79
	ADD R3, R5, #34
	ADD R4, R6, #84
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #58
	ADD R1, R6, #79
	ADD R3, R5, #59
	ADD R4, R6, #100
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #66
	ADD R1, R6, #79
	ADD R3, R5, #67
	ADD R4, R6, #88
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #25
	ADD R1, R6, #80
	ADD R3, R5, #30
	ADD R4, R6, #88
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #24
	ADD R1, R6, #82
	ADD R3, R5, #31
	ADD R4, R6, #87
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #67
	ADD R1, R6, #83
	ADD R3, R5, #68
	ADD R4, R6, #88
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #23
	ADD R1, R6, #84
	ADD R3, R5, #31
	ADD R4, R6, #87
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #75
	ADD R1, R6, #86
	ADD R3, R5, #77
	ADD R4, R6, #92
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #77
	ADD R1, R6, #87
	ADD R3, R5, #78
	ADD R4, R6, #93
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #78
	ADD R1, R6, #88
	ADD R3, R5, #80
	ADD R4, R6, #93
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #74
	ADD R1, R6, #89
	ADD R3, R5, #81
	ADD R4, R6, #91
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #81
	ADD R1, R6, #90
	ADD R3, R5, #83
	ADD R4, R6, #96
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #59
	ADD R1, R6, #91
	ADD R3, R5, #60
	ADD R4, R6, #99
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #60
	ADD R1, R6, #91
	ADD R3, R5, #62
	ADD R4, R6, #98
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #80
	ADD R1, R6, #91
	ADD R3, R5, #85
	ADD R4, R6, #95
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #62
	ADD R1, R6, #92
	ADD R3, R5, #63
	ADD R4, R6, #96
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #85
	ADD R1, R6, #92
	ADD R3, R5, #87
	ADD R4, R6, #99
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #54
	ADD R1, R6, #93
	ADD R3, R5, #55
	ADD R4, R6, #105
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #55
	ADD R1, R6, #93
	ADD R3, R5, #56
	ADD R4, R6, #103
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #79
	ADD R1, R6, #93
	ADD R3, R5, #89
	ADD R4, R6, #94
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #87
	ADD R1, R6, #94
	ADD R3, R5, #90
	ADD R4, R6, #101
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #53
	ADD R1, R6, #95
	ADD R3, R5, #55
	ADD R4, R6, #105
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #83
	ADD R1, R6, #95
	ADD R3, R5, #92
	ADD R4, R6, #97
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #52
	ADD R1, R6, #96
	ADD R3, R5, #55
	ADD R4, R6, #105
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #82
	ADD R1, R6, #96
	ADD R3, R5, #94
	ADD R4, R6, #97
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #34
	ADD R1, R6, #97
	ADD R3, R5, #35
	ADD R4, R6, #105
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #84
	ADD R1, R6, #97
	ADD R3, R5, #96
	ADD R4, R6, #98
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #35
	ADD R1, R6, #98
	ADD R3, R5, #36
	ADD R4, R6, #105
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #51
	ADD R1, R6, #98
	ADD R3, R5, #55
	ADD R4, R6, #105
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #90
	ADD R1, R6, #98
	ADD R3, R5, #97
	ADD R4, R6, #103
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #50
	ADD R1, R6, #99
	ADD R3, R5, #55
	ADD R4, R6, #104
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #86
	ADD R1, R6, #99
	ADD R3, R5, #98
	ADD R4, R6, #100
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #33
	ADD R1, R6, #100
	ADD R3, R5, #37
	ADD R4, R6, #104
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #49
	ADD R1, R6, #100
	ADD R3, R5, #55
	ADD R4, R6, #104
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #97
	ADD R1, R6, #100
	ADD R3, R5, #98
	ADD R4, R6, #108
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #89
	ADD R1, R6, #101
	ADD R3, R5, #98
	ADD R4, R6, #102
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #91
	ADD R1, R6, #103
	ADD R3, R5, #98
	ADD R4, R6, #104
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #36
	ADD R1, R6, #104
	ADD R3, R5, #37
	ADD R4, R6, #105
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #93
	ADD R1, R6, #104
	ADD R3, R5, #98
	ADD R4, R6, #105
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #95
	ADD R1, R6, #105
	ADD R3, R5, #98
	ADD R4, R6, #106
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #46
	ADD R1, R6, #106
	ADD R3, R5, #52
	ADD R4, R6, #109
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #96
	ADD R1, R6, #106
	ADD R3, R5, #98
	ADD R4, R6, #107
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #36
	ADD R1, R6, #107
	ADD R3, R5, #39
	ADD R4, R6, #110
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #39
	ADD R1, R6, #107
	ADD R3, R5, #40
	ADD R4, R6, #109
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #52
	ADD R1, R6, #107
	ADD R3, R5, #54
	ADD R4, R6, #110
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #40
	ADD R1, R6, #108
	ADD R3, R5, #41
	ADD R4, R6, #109
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #54
	ADD R1, R6, #108
	ADD R3, R5, #55
	ADD R4, R6, #109
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #48
	ADD R1, R6, #109
	ADD R3, R5, #49
	ADD R4, R6, #122
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #49
	ADD R1, R6, #109
	ADD R3, R5, #50
	ADD R4, R6, #121
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #50
	ADD R1, R6, #109
	ADD R3, R5, #54
	ADD R4, R6, #110
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #47
	ADD R1, R6, #110
	ADD R3, R5, #50
	ADD R4, R6, #121
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #50
	ADD R1, R6, #111
	ADD R3, R5, #52
	ADD R4, R6, #120
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #46
	ADD R1, R6, #113
	ADD R3, R5, #50
	ADD R4, R6, #121
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #52
	ADD R1, R6, #113
	ADD R3, R5, #53
	ADD R4, R6, #119
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #53
	ADD R1, R6, #113
	ADD R3, R5, #54
	ADD R4, R6, #118
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #43
	ADD R1, R6, #114
	ADD R3, R5, #54
	ADD R4, R6, #118
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #54
	ADD R1, R6, #114
	ADD R3, R5, #55
	ADD R4, R6, #117
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #44
	ADD R1, R6, #118
	ADD R3, R5, #52
	ADD R4, R6, #120
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #45
	ADD R1, R6, #120
	ADD R3, R5, #50
	ADD R4, R6, #121
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #77
	ADD R1, R6, #124
	ADD R3, R5, #79
	ADD R4, R6, #125
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #78
	ADD R1, R6, #125
	ADD R3, R5, #79
	ADD R4, R6, #127
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #79
	ADD R1, R6, #126
	ADD R3, R5, #81
	ADD R4, R6, #127
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #80
	ADD R1, R6, #127
	ADD R3, R5, #82
	ADD R4, R6, #128
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #81
	ADD R1, R6, #128
	ADD R3, R5, #83
	ADD R4, R6, #129
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #83
	ADD R1, R6, #129
	ADD R3, R5, #84
	ADD R4, R6, #130
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #66
	ADD R1, R6, #130
	ADD R3, R5, #67
	ADD R4, R6, #131
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #84
	ADD R1, R6, #130
	ADD R3, R5, #85
	ADD R4, R6, #131
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #67
	ADD R1, R6, #131
	ADD R3, R5, #69
	ADD R4, R6, #132
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #68
	ADD R1, R6, #132
	ADD R3, R5, #71
	ADD R4, R6, #133
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #30
	ADD R1, R6, #133
	ADD R3, R5, #31
	ADD R4, R6, #135
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #31
	ADD R1, R6, #133
	ADD R3, R5, #32
	ADD R4, R6, #134
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #69
	ADD R1, R6, #133
	ADD R3, R5, #73
	ADD R4, R6, #134
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #27
	ADD R1, R6, #134
	ADD R3, R5, #28
	ADD R4, R6, #137
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #28
	ADD R1, R6, #134
	ADD R3, R5, #29
	ADD R4, R6, #136
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #29
	ADD R1, R6, #134
	ADD R3, R5, #31
	ADD R4, R6, #135
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #71
	ADD R1, R6, #134
	ADD R3, R5, #75
	ADD R4, R6, #135
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #25
	ADD R1, R6, #135
	ADD R3, R5, #27
	ADD R4, R6, #138
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #72
	ADD R1, R6, #135
	ADD R3, R5, #77
	ADD R4, R6, #136
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #24
	ADD R1, R6, #136
	ADD R3, R5, #25
	ADD R4, R6, #140
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #73
	ADD R1, R6, #136
	ADD R3, R5, #79
	ADD R4, R6, #137
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #22
	ADD R1, R6, #137
	ADD R3, R5, #23
	ADD R4, R6, #142
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #23
	ADD R1, R6, #137
	ADD R3, R5, #24
	ADD R4, R6, #141
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #75
	ADD R1, R6, #137
	ADD R3, R5, #81
	ADD R4, R6, #139
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #19
	ADD R1, R6, #138
	ADD R3, R5, #20
	ADD R4, R6, #145
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #20
	ADD R1, R6, #138
	ADD R3, R5, #21
	ADD R4, R6, #144
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #21
	ADD R1, R6, #138
	ADD R3, R5, #22
	ADD R4, R6, #143
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #81
	ADD R1, R6, #138
	ADD R3, R5, #82
	ADD R4, R6, #144
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #18
	ADD R1, R6, #139
	ADD R3, R5, #19
	ADD R4, R6, #146
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #77
	ADD R1, R6, #139
	ADD R3, R5, #83
	ADD R4, R6, #140
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #16
	ADD R1, R6, #140
	ADD R3, R5, #17
	ADD R4, R6, #148
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #17
	ADD R1, R6, #140
	ADD R3, R5, #18
	ADD R4, R6, #147
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #36
	ADD R1, R6, #140
	ADD R3, R5, #38
	ADD R4, R6, #141
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #78
	ADD R1, R6, #140
	ADD R3, R5, #84
	ADD R4, R6, #141
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #14
	ADD R1, R6, #141
	ADD R3, R5, #16
	ADD R4, R6, #149
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #35
	ADD R1, R6, #141
	ADD R3, R5, #36
	ADD R4, R6, #142
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #79
	ADD R1, R6, #141
	ADD R3, R5, #86
	ADD R4, R6, #142
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #13
	ADD R1, R6, #142
	ADD R3, R5, #14
	ADD R4, R6, #150
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #80
	ADD R1, R6, #142
	ADD R3, R5, #87
	ADD R4, R6, #143
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #143
	ADD R3, R5, #11
	ADD R4, R6, #152
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #143
	ADD R3, R5, #13
	ADD R4, R6, #151
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #82
	ADD R1, R6, #143
	ADD R3, R5, #88
	ADD R4, R6, #145
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #144
	ADD R3, R5, #11
	ADD R4, R6, #152
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #48
	ADD R1, R6, #144
	ADD R3, R5, #50
	ADD R4, R6, #159
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #50
	ADD R1, R6, #144
	ADD R3, R5, #51
	ADD R4, R6, #158
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #88
	ADD R1, R6, #144
	ADD R3, R5, #89
	ADD R4, R6, #148
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #145
	ADD R3, R5, #8
	ADD R4, R6, #153
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #145
	ADD R3, R5, #11
	ADD R4, R6, #152
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #30
	ADD R1, R6, #145
	ADD R3, R5, #32
	ADD R4, R6, #146
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #47
	ADD R1, R6, #145
	ADD R3, R5, #48
	ADD R4, R6, #160
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #51
	ADD R1, R6, #145
	ADD R3, R5, #53
	ADD R4, R6, #151
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #55
	ADD R1, R6, #145
	ADD R3, R5, #56
	ADD R4, R6, #147
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #84
	ADD R1, R6, #145
	ADD R3, R5, #90
	ADD R4, R6, #146
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #146
	ADD R3, R5, #8
	ADD R4, R6, #153
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #28
	ADD R1, R6, #146
	ADD R3, R5, #29
	ADD R4, R6, #148
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #29
	ADD R1, R6, #146
	ADD R3, R5, #30
	ADD R4, R6, #147
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #46
	ADD R1, R6, #146
	ADD R3, R5, #48
	ADD R4, R6, #160
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #53
	ADD R1, R6, #146
	ADD R3, R5, #54
	ADD R4, R6, #155
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #56
	ADD R1, R6, #146
	ADD R3, R5, #58
	ADD R4, R6, #147
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #86
	ADD R1, R6, #146
	ADD R3, R5, #92
	ADD R4, R6, #147
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #147
	ADD R3, R5, #5
	ADD R4, R6, #154
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #27
	ADD R1, R6, #147
	ADD R3, R5, #28
	ADD R4, R6, #149
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #45
	ADD R1, R6, #147
	ADD R3, R5, #48
	ADD R4, R6, #160
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #54
	ADD R1, R6, #147
	ADD R3, R5, #55
	ADD R4, R6, #155
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #57
	ADD R1, R6, #147
	ADD R3, R5, #60
	ADD R4, R6, #148
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #89
	ADD R1, R6, #147
	ADD R3, R5, #93
	ADD R4, R6, #149
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #148
	ADD R3, R5, #3
	ADD R4, R6, #155
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #3
	ADD R1, R6, #148
	ADD R3, R5, #5
	ADD R4, R6, #154
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #25
	ADD R1, R6, #148
	ADD R3, R5, #26
	ADD R4, R6, #150
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #26
	ADD R1, R6, #148
	ADD R3, R5, #28
	ADD R4, R6, #149
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #43
	ADD R1, R6, #148
	ADD R3, R5, #45
	ADD R4, R6, #161
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #55
	ADD R1, R6, #148
	ADD R3, R5, #57
	ADD R4, R6, #156
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #58
	ADD R1, R6, #148
	ADD R3, R5, #59
	ADD R4, R6, #155
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #59
	ADD R1, R6, #148
	ADD R3, R5, #63
	ADD R4, R6, #149
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #93
	ADD R1, R6, #148
	ADD R3, R5, #94
	ADD R4, R6, #150
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #0
	ADD R1, R6, #149
	ADD R3, R5, #1
	ADD R4, R6, #156
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #149
	ADD R3, R5, #3
	ADD R4, R6, #155
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #23
	ADD R1, R6, #149
	ADD R3, R5, #24
	ADD R4, R6, #152
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #24
	ADD R1, R6, #149
	ADD R3, R5, #25
	ADD R4, R6, #151
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #39
	ADD R1, R6, #149
	ADD R3, R5, #41
	ADD R4, R6, #150
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #42
	ADD R1, R6, #149
	ADD R3, R5, #45
	ADD R4, R6, #161
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #57
	ADD R1, R6, #149
	ADD R3, R5, #58
	ADD R4, R6, #156
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #61
	ADD R1, R6, #149
	ADD R3, R5, #65
	ADD R4, R6, #150
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #92
	ADD R1, R6, #149
	ADD R3, R5, #95
	ADD R4, R6, #150
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #22
	ADD R1, R6, #150
	ADD R3, R5, #24
	ADD R4, R6, #152
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #37
	ADD R1, R6, #150
	ADD R3, R5, #38
	ADD R4, R6, #152
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #38
	ADD R1, R6, #150
	ADD R3, R5, #39
	ADD R4, R6, #151
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #40
	ADD R1, R6, #150
	ADD R3, R5, #45
	ADD R4, R6, #161
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #59
	ADD R1, R6, #150
	ADD R3, R5, #60
	ADD R4, R6, #154
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #60
	ADD R1, R6, #150
	ADD R3, R5, #61
	ADD R4, R6, #152
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #63
	ADD R1, R6, #150
	ADD R3, R5, #68
	ADD R4, R6, #151
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #94
	ADD R1, R6, #150
	ADD R3, R5, #96
	ADD R4, R6, #151
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #20
	ADD R1, R6, #151
	ADD R3, R5, #21
	ADD R4, R6, #154
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #21
	ADD R1, R6, #151
	ADD R3, R5, #22
	ADD R4, R6, #153
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #35
	ADD R1, R6, #151
	ADD R3, R5, #36
	ADD R4, R6, #160
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #36
	ADD R1, R6, #151
	ADD R3, R5, #38
	ADD R4, R6, #152
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #39
	ADD R1, R6, #151
	ADD R3, R5, #45
	ADD R4, R6, #161
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #52
	ADD R1, R6, #151
	ADD R3, R5, #60
	ADD R4, R6, #153
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #61
	ADD R1, R6, #151
	ADD R3, R5, #63
	ADD R4, R6, #154
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #65
	ADD R1, R6, #151
	ADD R3, R5, #70
	ADD R4, R6, #152
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #95
	ADD R1, R6, #151
	ADD R3, R5, #98
	ADD R4, R6, #152
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #18
	ADD R1, R6, #152
	ADD R3, R5, #19
	ADD R4, R6, #155
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #19
	ADD R1, R6, #152
	ADD R3, R5, #21
	ADD R4, R6, #154
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #33
	ADD R1, R6, #152
	ADD R3, R5, #34
	ADD R4, R6, #154
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #34
	ADD R1, R6, #152
	ADD R3, R5, #36
	ADD R4, R6, #153
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #38
	ADD R1, R6, #152
	ADD R3, R5, #45
	ADD R4, R6, #161
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #63
	ADD R1, R6, #152
	ADD R3, R5, #65
	ADD R4, R6, #157
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #67
	ADD R1, R6, #152
	ADD R3, R5, #72
	ADD R4, R6, #153
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #97
	ADD R1, R6, #152
	ADD R3, R5, #98
	ADD R4, R6, #153
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #17
	ADD R1, R6, #153
	ADD R3, R5, #18
	ADD R4, R6, #156
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #31
	ADD R1, R6, #153
	ADD R3, R5, #33
	ADD R4, R6, #155
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #36
	ADD R1, R6, #153
	ADD R3, R5, #48
	ADD R4, R6, #160
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #65
	ADD R1, R6, #153
	ADD R3, R5, #67
	ADD R4, R6, #158
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #69
	ADD R1, R6, #153
	ADD R3, R5, #74
	ADD R4, R6, #154
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #15
	ADD R1, R6, #154
	ADD R3, R5, #16
	ADD R4, R6, #157
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #16
	ADD R1, R6, #154
	ADD R3, R5, #18
	ADD R4, R6, #156
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #29
	ADD R1, R6, #154
	ADD R3, R5, #31
	ADD R4, R6, #156
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #34
	ADD R1, R6, #154
	ADD R3, R5, #48
	ADD R4, R6, #160
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #62
	ADD R1, R6, #154
	ADD R3, R5, #69
	ADD R4, R6, #156
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #72
	ADD R1, R6, #154
	ADD R3, R5, #77
	ADD R4, R6, #155
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #14
	ADD R1, R6, #155
	ADD R3, R5, #16
	ADD R4, R6, #157
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #25
	ADD R1, R6, #155
	ADD R3, R5, #26
	ADD R4, R6, #159
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #26
	ADD R1, R6, #155
	ADD R3, R5, #28
	ADD R4, R6, #158
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #28
	ADD R1, R6, #155
	ADD R3, R5, #29
	ADD R4, R6, #157
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #32
	ADD R1, R6, #155
	ADD R3, R5, #50
	ADD R4, R6, #159
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #69
	ADD R1, R6, #155
	ADD R3, R5, #71
	ADD R4, R6, #157
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #73
	ADD R1, R6, #155
	ADD R3, R5, #80
	ADD R4, R6, #156
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #12
	ADD R1, R6, #156
	ADD R3, R5, #13
	ADD R4, R6, #159
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #13
	ADD R1, R6, #156
	ADD R3, R5, #14
	ADD R4, R6, #158
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #23
	ADD R1, R6, #156
	ADD R3, R5, #25
	ADD R4, R6, #160
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #30
	ADD R1, R6, #156
	ADD R3, R5, #51
	ADD R4, R6, #158
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #67
	ADD R1, R6, #156
	ADD R3, R5, #69
	ADD R4, R6, #158
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #75
	ADD R1, R6, #156
	ADD R3, R5, #83
	ADD R4, R6, #157
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #157
	ADD R3, R5, #11
	ADD R4, R6, #160
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #11
	ADD R1, R6, #157
	ADD R3, R5, #13
	ADD R4, R6, #159
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #21
	ADD R1, R6, #157
	ADD R3, R5, #23
	ADD R4, R6, #161
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #64
	ADD R1, R6, #157
	ADD R3, R5, #69
	ADD R4, R6, #158
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #78
	ADD R1, R6, #157
	ADD R3, R5, #86
	ADD R4, R6, #158
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #158
	ADD R3, R5, #10
	ADD R4, R6, #161
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #19
	ADD R1, R6, #158
	ADD R3, R5, #20
	ADD R4, R6, #163
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #20
	ADD R1, R6, #158
	ADD R3, R5, #21
	ADD R4, R6, #162
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #80
	ADD R1, R6, #158
	ADD R3, R5, #88
	ADD R4, R6, #159
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #159
	ADD R3, R5, #8
	ADD R4, R6, #162
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #17
	ADD R1, R6, #159
	ADD R3, R5, #18
	ADD R4, R6, #164
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #18
	ADD R1, R6, #159
	ADD R3, R5, #20
	ADD R4, R6, #163
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #82
	ADD R1, R6, #159
	ADD R3, R5, #90
	ADD R4, R6, #160
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #160
	ADD R3, R5, #6
	ADD R4, R6, #163
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #160
	ADD R3, R5, #8
	ADD R4, R6, #162
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #16
	ADD R1, R6, #160
	ADD R3, R5, #18
	ADD R4, R6, #164
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #84
	ADD R1, R6, #160
	ADD R3, R5, #92
	ADD R4, R6, #161
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #3
	ADD R1, R6, #161
	ADD R3, R5, #4
	ADD R4, R6, #164
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #161
	ADD R3, R5, #6
	ADD R4, R6, #163
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #14
	ADD R1, R6, #161
	ADD R3, R5, #16
	ADD R4, R6, #165
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #86
	ADD R1, R6, #161
	ADD R3, R5, #95
	ADD R4, R6, #162
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #0
	ADD R1, R6, #162
	ADD R3, R5, #1
	ADD R4, R6, #166
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #162
	ADD R3, R5, #2
	ADD R4, R6, #165
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #162
	ADD R3, R5, #4
	ADD R4, R6, #164
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #12
	ADD R1, R6, #162
	ADD R3, R5, #14
	ADD R4, R6, #166
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #89
	ADD R1, R6, #162
	ADD R3, R5, #97
	ADD R4, R6, #163
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #10
	ADD R1, R6, #163
	ADD R3, R5, #12
	ADD R4, R6, #167
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #91
	ADD R1, R6, #163
	ADD R3, R5, #98
	ADD R4, R6, #164
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #8
	ADD R1, R6, #164
	ADD R3, R5, #10
	ADD R4, R6, #168
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #94
	ADD R1, R6, #164
	ADD R3, R5, #98
	ADD R4, R6, #165
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #6
	ADD R1, R6, #165
	ADD R3, R5, #8
	ADD R4, R6, #169
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #96
	ADD R1, R6, #165
	ADD R3, R5, #98
	ADD R4, R6, #166
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #4
	ADD R1, R6, #166
	ADD R3, R5, #5
	ADD R4, R6, #171
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #166
	ADD R3, R5, #6
	ADD R4, R6, #170
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #167
	ADD R3, R5, #5
	ADD R4, R6, #171
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #1
	ADD R1, R6, #168
	ADD R3, R5, #2
	ADD R4, R6, #172
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #0
	ADD R1, R6, #169
	ADD R3, R5, #1
	ADD R4, R6, #173
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #88
	ADD R1, R6, #169
	ADD R3, R5, #95
	ADD R4, R6, #195
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #85
	ADD R1, R6, #170
	ADD R3, R5, #98
	ADD R4, R6, #194
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #83
	ADD R1, R6, #171
	ADD R3, R5, #98
	ADD R4, R6, #194
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #13
	ADD R1, R6, #172
	ADD R3, R5, #26
	ADD R4, R6, #199
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #81
	ADD R1, R6, #172
	ADD R3, R5, #98
	ADD R4, R6, #194
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #9
	ADD R1, R6, #173
	ADD R3, R5, #26
	ADD R4, R6, #199
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #26
	ADD R1, R6, #173
	ADD R3, R5, #29
	ADD R4, R6, #198
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #80
	ADD R1, R6, #173
	ADD R3, R5, #98
	ADD R4, R6, #193
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #7
	ADD R1, R6, #174
	ADD R3, R5, #26
	ADD R4, R6, #199
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #29
	ADD R1, R6, #174
	ADD R3, R5, #30
	ADD R4, R6, #198
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #30
	ADD R1, R6, #174
	ADD R3, R5, #31
	ADD R4, R6, #197
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #79
	ADD R1, R6, #174
	ADD R3, R5, #98
	ADD R4, R6, #193
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #5
	ADD R1, R6, #175
	ADD R3, R5, #26
	ADD R4, R6, #199
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #31
	ADD R1, R6, #175
	ADD R3, R5, #32
	ADD R4, R6, #197
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #32
	ADD R1, R6, #175
	ADD R3, R5, #33
	ADD R4, R6, #196
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #3
	ADD R1, R6, #176
	ADD R3, R5, #26
	ADD R4, R6, #199
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #33
	ADD R1, R6, #176
	ADD R3, R5, #34
	ADD R4, R6, #196
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #78
	ADD R1, R6, #176
	ADD R3, R5, #98
	ADD R4, R6, #193
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #2
	ADD R1, R6, #177
	ADD R3, R5, #26
	ADD R4, R6, #199
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #34
	ADD R1, R6, #177
	ADD R3, R5, #35
	ADD R4, R6, #196
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #71
	ADD R1, R6, #177
	ADD R3, R5, #74
	ADD R4, R6, #190
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #0
	ADD R1, R6, #178
	ADD R3, R5, #26
	ADD R4, R6, #199
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #35
	ADD R1, R6, #178
	ADD R3, R5, #36
	ADD R4, R6, #195
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #42
	ADD R1, R6, #178
	ADD R3, R5, #43
	ADD R4, R6, #193
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #43
	ADD R1, R6, #178
	ADD R3, R5, #45
	ADD R4, R6, #192
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #45
	ADD R1, R6, #178
	ADD R3, R5, #48
	ADD R4, R6, #191
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #48
	ADD R1, R6, #178
	ADD R3, R5, #49
	ADD R4, R6, #190
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #69
	ADD R1, R6, #178
	ADD R3, R5, #76
	ADD R4, R6, #190
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #40
	ADD R1, R6, #179
	ADD R3, R5, #43
	ADD R4, R6, #193
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #49
	ADD R1, R6, #179
	ADD R3, R5, #50
	ADD R4, R6, #190
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #50
	ADD R1, R6, #179
	ADD R3, R5, #51
	ADD R4, R6, #189
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #67
	ADD R1, R6, #179
	ADD R3, R5, #98
	ADD R4, R6, #189
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #36
	ADD R1, R6, #180
	ADD R3, R5, #37
	ADD R4, R6, #195
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #39
	ADD R1, R6, #180
	ADD R3, R5, #40
	ADD R4, R6, #194
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #51
	ADD R1, R6, #180
	ADD R3, R5, #53
	ADD R4, R6, #189
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #66
	ADD R1, R6, #180
	ADD R3, R5, #98
	ADD R4, R6, #188
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #53
	ADD R1, R6, #181
	ADD R3, R5, #54
	ADD R4, R6, #199
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #65
	ADD R1, R6, #181
	ADD R3, R5, #98
	ADD R4, R6, #188
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #37
	ADD R1, R6, #182
	ADD R3, R5, #40
	ADD R4, R6, #194
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #64
	ADD R1, R6, #182
	ADD R3, R5, #65
	ADD R4, R6, #199
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #54
	ADD R1, R6, #183
	ADD R3, R5, #55
	ADD R4, R6, #199
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #55
	ADD R1, R6, #184
	ADD R3, R5, #56
	ADD R4, R6, #199
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #63
	ADD R1, R6, #184
	ADD R3, R5, #65
	ADD R4, R6, #199
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #56
	ADD R1, R6, #185
	ADD R3, R5, #57
	ADD R4, R6, #199
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #57
	ADD R1, R6, #186
	ADD R3, R5, #58
	ADD R4, R6, #199
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #62
	ADD R1, R6, #186
	ADD R3, R5, #65
	ADD R4, R6, #199
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #52
	ADD R1, R6, #189
	ADD R3, R5, #59
	ADD R4, R6, #199
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #61
	ADD R1, R6, #189
	ADD R3, R5, #66
	ADD R4, R6, #199
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #76
	ADD R1, R6, #189
	ADD R3, R5, #98
	ADD R4, R6, #192
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #50
	ADD R1, R6, #190
	ADD R3, R5, #59
	ADD R4, R6, #199
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #66
	ADD R1, R6, #190
	ADD R3, R5, #67
	ADD R4, R6, #199
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #72
	ADD R1, R6, #190
	ADD R3, R5, #98
	ADD R4, R6, #191
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #47
	ADD R1, R6, #191
	ADD R3, R5, #59
	ADD R4, R6, #199
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #67
	ADD R1, R6, #191
	ADD R3, R5, #68
	ADD R4, R6, #199
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #74
	ADD R1, R6, #191
	ADD R3, R5, #98
	ADD R4, R6, #192
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #46
	ADD R1, R6, #192
	ADD R3, R5, #70
	ADD R4, R6, #199
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #44
	ADD R1, R6, #193
	ADD R3, R5, #71
	ADD R4, R6, #199
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #42
	ADD R1, R6, #194
	ADD R3, R5, #72
	ADD R4, R6, #199
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #87
	ADD R1, R6, #194
	ADD R3, R5, #97
	ADD R4, R6, #195
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #41
	ADD R1, R6, #195
	ADD R3, R5, #74
	ADD R4, R6, #199
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #39
	ADD R1, R6, #196
	ADD R3, R5, #75
	ADD R4, R6, #199
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #38
	ADD R1, R6, #197
	ADD R3, R5, #77
	ADD R4, R6, #199
	BL DRAW_RECTANGLE_FILLED

	ADD R0, R5, #36
	ADD R1, R6, #198
	ADD R3, R5, #79
	ADD R4, R6, #199
	BL DRAW_RECTANGLE_FILLED

	POP {R0-R12, PC}

	LTORG
	END
		