	EXPORT DRAW_LARGE
	EXPORT DRAW
	EXPORT DRAW_CLOCK
	IMPORT DRAW_RECTANGLE_FILLED
	AREA MYCODE, CODE, READONLY

DRAW_TEXT
	; R0 - dx
	; R1 - dy
	; R9 - table address
	; R10 - colour

    PUSH {R0-R12, LR}
	
    MOV R5, R0         ; base x
    MOV R6, R1         ; base y
    MOV R11, #0X1FF

DRAW_LOOP
    LDR R7, [R9], #4   ; Load packed start (x0 y0)
    LDR R8, [R9], #4   ; Load packed end (x1, y1)
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


DRAW FUNCTION
	; Draws ASCII character in R2 starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R2: ASCII character
	; R10: color
	PUSH {R0-R12, LR}


	LDR R9, =A_TABLE	
	CMP R2, #97
	BEQ.W GO_DRAW_0
	
	LDR R9, =B_TABLE
	CMP R2, #98
	BEQ.W GO_DRAW_0
	
	LDR R9, =C_TABLE
	CMP R2, #99
	BEQ.W GO_DRAW_0
	
	LDR R9, =D_TABLE
	CMP R2, #100
	BEQ.W GO_DRAW_0
	
	LDR R9, =E_TABLE
	CMP R2, #101
	BEQ.W GO_DRAW_0
	
	LDR R9, =F_TABLE
	CMP R2, #102
	BEQ.W GO_DRAW_0
	
	LDR R9, =G_TABLE
	CMP R2, #103
	BEQ.W GO_DRAW_0
	
	LDR R9, =H_TABLE
	CMP R2, #104
	BEQ.W GO_DRAW_0
	
	LDR R9, =I_TABLE
	CMP R2, #105
	BEQ.W GO_DRAW_0
	
	LDR R9, =J_TABLE
	CMP R2, #106
	BEQ.W GO_DRAW_0
	
	LDR R9, =K_TABLE
	CMP R2, #107
	BEQ.W GO_DRAW_0
	
	LDR R9, =L_TABLE
	CMP R2, #108
	BEQ.W GO_DRAW_0
	
	LDR R9, =M_TABLE
	CMP R2, #109
	BEQ.W GO_DRAW_0
	
	LDR R9, =N_TABLE
	CMP R2, #110
	BEQ.W GO_DRAW_0
	
	LDR R9, =O_TABLE
	CMP R2, #111
	BEQ.W GO_DRAW_0
	
	LDR R9, =P_TABLE
	CMP R2, #112
	BEQ.W GO_DRAW_0
	
	LDR R9, =Q_TABLE
	CMP R2, #113
	BEQ.W GO_DRAW_0
	
	LDR R9, =R_TABLE
	CMP R2, #114
	BEQ.W GO_DRAW_0
	
	LDR R9, =S_TABLE
	CMP R2, #115
	BEQ.W GO_DRAW_0
	
	LDR R9, =T_TABLE
	CMP R2, #116
	BEQ.W GO_DRAW_0
	
	LDR R9, =U_TABLE
	CMP R2, #117
	BEQ.W GO_DRAW_0
	
	LDR R9, =V_TABLE
	CMP R2, #118
	BEQ.W GO_DRAW_0
	
	LDR R9, =W_TABLE
	CMP R2, #119
	BEQ.W GO_DRAW_0
	
	LDR R9, =X_TABLE
	CMP R2, #120
	BEQ.W GO_DRAW_0
	
	LDR R9, =Y_TABLE
	CMP R2, #121
	BEQ.W GO_DRAW_0
	
	LDR R9, =Z_TABLE
	CMP R2, #122
	BEQ.W GO_DRAW_0
	
	LDR R9, =A_UPPER_TABLE
	CMP R2, #65
	BEQ.W GO_DRAW_0
	
	LDR R9, =B_UPPER_TABLE
	CMP R2, #66
	BEQ.W GO_DRAW_0
	
	LDR R9, =C_UPPER_TABLE
	CMP R2, #67
	BEQ.W GO_DRAW_0
	
	LDR R9, =D_UPPER_TABLE
	CMP R2, #68
	BEQ.W GO_DRAW_0
	
	LDR R9, =E_UPPER_TABLE
	CMP R2, #69
	BEQ.W GO_DRAW_0
	
	LDR R9, =F_UPPER_TABLE
	CMP R2, #70
	BEQ.W GO_DRAW_0
	
	LDR R9, =G_UPPER_TABLE
	CMP R2, #71
	BEQ.W GO_DRAW_0
	
	LDR R9, =H_UPPER_TABLE
	CMP R2, #72
	BEQ.W GO_DRAW_0
	
	LDR R9, =I_UPPER_TABLE
	CMP R2, #73
	BEQ.W GO_DRAW_0
	
	LDR R9, =J_UPPER_TABLE
	CMP R2, #74
	BEQ.W GO_DRAW_0
	
	LDR R9, =K_UPPER_TABLE
	CMP R2, #75
	BEQ.W GO_DRAW_0
	
	LDR R9, =L_UPPER_TABLE
	CMP R2, #76
	BEQ.W GO_DRAW_0
	
	LDR R9, =M_UPPER_TABLE
	CMP R2, #77
	BEQ.W GO_DRAW_0
	
	LDR R9, =N_UPPER_TABLE
	CMP R2, #78
	BEQ.W GO_DRAW_0
	
	LDR R9, =O_UPPER_TABLE
	CMP R2, #79
	BEQ.W GO_DRAW_0
	
	LDR R9, =P_UPPER_TABLE
	CMP R2, #80
	BEQ.W GO_DRAW_0
	
	LDR R9, =Q_UPPER_TABLE
	CMP R2, #81
	BEQ.W GO_DRAW_0
	
	LDR R9, =R_UPPER_TABLE
	CMP R2, #82
	BEQ.W GO_DRAW_0
	
	LDR R9, =S_UPPER_TABLE
	CMP R2, #83
	BEQ.W GO_DRAW_0
	
	LDR R9, =T_UPPER_TABLE
	CMP R2, #84
	BEQ.W GO_DRAW_0
	
	LDR R9, =U_UPPER_TABLE
	CMP R2, #85
	BEQ.W GO_DRAW_0
	
	LDR R9, =V_UPPER_TABLE
	CMP R2, #86
	BEQ.W GO_DRAW_0
	
	LDR R9, =W_UPPER_TABLE
	CMP R2, #87
	BEQ.W GO_DRAW_0
	
	LDR R9, =X_UPPER_TABLE
	CMP R2, #88
	BEQ.W GO_DRAW_0
	
	LDR R9, =Y_UPPER_TABLE
	CMP R2, #89
	BEQ.W GO_DRAW_0
	
	LDR R9, =Z_UPPER_TABLE
	CMP R2, #90
	BEQ.W GO_DRAW_0
	
	LDR R9, =ZERO_TABLE
	CMP R2, #48
	BEQ.W GO_DRAW_0
	
	LDR R9, =ONE_TABLE
	CMP R2, #49
	BEQ.W GO_DRAW_0
	
	LDR R9, =TWO_TABLE
	CMP R2, #50
	BEQ.W GO_DRAW_0
	
	LDR R9, =THREE_TABLE
	CMP R2, #51
	BEQ.W GO_DRAW_0
	
	LDR R9, =FOUR_TABLE
	CMP R2, #52
	BEQ.W GO_DRAW_0
	
	LDR R9, =FIVE_TABLE
	CMP R2, #53
	BEQ.W GO_DRAW_0
	
	LDR R9, =SIX_TABLE
	CMP R2, #54
	BEQ.W GO_DRAW_0
	
	LDR R9, =SEVEN_TABLE
	CMP R2, #55
	BEQ.W GO_DRAW_0
	
	LDR R9, =EIGHT_TABLE
	CMP R2, #56
	BEQ.W GO_DRAW_0
	
	LDR R9, =NINE_TABLE
	CMP R2, #57
	BEQ.W GO_DRAW_0

	LDR R9, =DEGREE_TABLE
	CMP R2, #1000
	BEQ.W GO_DRAW_0
	
GO_DRAW_0
	BL DRAW_TEXT
	POP {R0-R12, PC}
	ENDFUNC

DRAW_LARGE FUNCTION
	; Draws ASCII character in R2 starting from the top left corner x, y:
	; R0: x
	; R1: y
	; R2: ASCII character
	; R10: color
	PUSH {R0-R12, LR}

	LDR R9, =ZERO_LARGE_TABLE
	CMP R2, #48
	BEQ GO_DRAW
	
	LDR R9, =ONE_LARGE_TABLE
	CMP R2, #49
	BEQ GO_DRAW
	
	LDR R9, =TWO_LARGE_TABLE
	CMP R2, #50
	BEQ GO_DRAW
	
	LDR R9, =THREE_LARGE_TABLE
	CMP R2, #51
	BEQ GO_DRAW
	
	LDR R9, =FOUR_LARGE_TABLE
	CMP R2, #52
	BEQ GO_DRAW
	
	LDR R9, =FIVE_LARGE_TABLE
	CMP R2, #53
	BEQ GO_DRAW
	
	LDR R9, =SIX_LARGE_TABLE
	CMP R2, #54
	BEQ GO_DRAW
	
	LDR R9, =SEVEN_LARGE_TABLE
	CMP R2, #55
	BEQ GO_DRAW
	
	LDR R9, =EIGHT_LARGE_TABLE
	CMP R2, #56
	BEQ GO_DRAW
	
	LDR R9, =NINE_LARGE_TABLE
	CMP R2, #57
	BEQ GO_DRAW

	LDR R9, =COLON_TABLE
	CMP R2, #58
	BEQ GO_DRAW

GO_DRAW
	BL DRAW_TEXT
	POP {R0-R12, PC}
	ENDFUNC
	
	LTORG

DRAW_CLOCK
	PUSH {R0-R12, LR}
	MOV R10, #0xFFFF
	MOV R0, #205
	MOV R1, #0

	MOV R2, #'C'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'L'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'O'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'C'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'K'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	POP {R0-R12, PC}

DRAW_ALARM
	PUSH {R0-R12, LR}
	MOV R10, #0xFFFF
	MOV R0, #205
	MOV R1, #0
	MOV R2, #'A'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'L'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'A'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'R'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'M'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	POP {R0-R12, PC}

DRAW_TIMER
	PUSH {R0-R12, LR}
	MOV R10, #0xFFFF
	MOV R0, #205
	MOV R1, #0
	MOV R2, #'T'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'I'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'M'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'E'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	MOV R2, #'R'
	BL DRAW
	ADD R0, R0, #Char_small_size_x
	POP {R0-R12, PC}

ZERO_LARGE_TABLE
	DCDU 2611, 8771, 3116, 8778, 3624, 8782, 4133, 8785, 4642, 8787, 5153, 8789, 5663, 8790, 6174, 8792, 6685, 8793, 7196, 8794, 7707, 8794, 8218, 8795, 8729, 9263, 8774, 9308, 9241, 9771, 9291, 9820, 9752, 10280, 9805, 10333, 10264, 10790, 10319, 10845, 10776, 11301, 10810, 19004, 10833, 11357, 11287, 12323, 11318, 18495, 11346, 11870, 11829, 17985, 11859, 12894, 12311, 12834, 12340, 17474, 12823, 18977, 12884, 19038, 13363, 16962, 13890, 16451, 16929, 25122, 17491, 19038, 17954, 25123, 17983, 18496, 18002, 19038, 18467, 25636, 18487, 19007, 18513, 19038, 18968, 20517, 19024, 20573, 19493, 25639, 19534, 20573, 20007, 26153, 20044, 20573, 20505, 21036, 20553, 21596, 21018, 22066, 21060, 21596, 21554, 22107, 22043, 22618, 22556, 23129, 23069, 23640, 23582, 24151, 24096, 24662, 24612, 25172, 25124, 25682, 25638, 26192, 26153, 26701, 26670, 27208, 0

ONE_LARGE_TABLE
	DCDU 4179, 26717, 4637, 5672, 5660, 7207, 7195, 8742, 8730, 10277, 10265, 11812, 11288, 11812, 11800, 18467, 12835, 18525, 0

TWO_LARGE_TABLE
	DCDU 2592, 10275, 3103, 9252, 3614, 8741, 3665, 11869, 4125, 8230, 4176, 11869, 4636, 7719, 5159, 7208, 5199, 11869, 5659, 6697, 6170, 6697, 6222, 11869, 6682, 7208, 6733, 11869, 7193, 7719, 7705, 8230, 7756, 11869, 8217, 8741, 8267, 11869, 8728, 9252, 9240, 10275, 9290, 11869, 9801, 11869, 10263, 11810, 10824, 11869, 11335, 11869, 11799, 18977, 11846, 12882, 11859, 27229, 12357, 12882, 12869, 13393, 13380, 14416, 13891, 14416, 14402, 14927, 14913, 15438, 15423, 16461, 15934, 16461, 16445, 16972, 16929, 24610, 16956, 17483, 17466, 17994, 17954, 25123, 17976, 18505, 18467, 25124, 18486, 19016, 18968, 20518, 18996, 19527, 19494, 25640, 19504, 20038, 20008, 20549, 20505, 21060, 21017, 21571, 21530, 22081, 22043, 22592, 22556, 23103, 23069, 23613, 23582, 24123, 24095, 24633, 24612, 25142, 25125, 25650, 0

THREE_LARGE_TABLE
	DCDU 3103, 11810, 3614, 10787, 3670, 21084, 4125, 9764, 4178, 5725, 4644, 8741, 5148, 8230, 5659, 7719, 5715, 7773, 6183, 6696, 6682, 7719, 6749, 18014, 7193, 7719, 7705, 8230, 7764, 12382, 8217, 8741, 8728, 9764, 8758, 18490, 9274, 22077, 9752, 10787, 10263, 10787, 10301, 24126, 10775, 11810, 11317, 18494, 11799, 19489, 12373, 18014, 12884, 18014, 13364, 18494, 14899, 18495, 15922, 18495, 16447, 25152, 16467, 18014, 16945, 18496, 17441, 25122, 17490, 18014, 17968, 18497, 18002, 20061, 18466, 25635, 18479, 20023, 18488, 20034, 18513, 20061, 18979, 25636, 18989, 20023, 19010, 25667, 19024, 20061, 19480, 21031, 19499, 20023, 19523, 26180, 19535, 20061, 20007, 21046, 20025, 21062, 20045, 21084, 20550, 21084, 21017, 22069, 21054, 22107, 22042, 22580, 22075, 22618, 22554, 23091, 22587, 23129, 23067, 23602, 23100, 23641, 23580, 24113, 23614, 24152, 24093, 24623, 24126, 24663, 24607, 25134, 24640, 25173, 25124, 25643, 25153, 25684, 25668, 26193, 0

FOUR_LARGE_TABLE
	DCDU 1612, 28238, 2119, 28238, 2625, 8782, 3132, 8782, 3639, 8782, 4146, 8782, 4653, 8782, 5160, 8782, 5667, 8782, 6173, 8782, 6683, 8782, 8731, 9279, 8773, 28238, 9243, 9786, 9755, 10293, 10267, 10800, 10779, 11307, 11291, 11814, 11803, 12321, 18968, 25181, 0

FIVE_LARGE_TABLE
	DCDU 3145, 8783, 3663, 9811, 4179, 12373, 4693, 25686, 5167, 8765, 5206, 25176, 5656, 8765, 5720, 24665, 6745, 24154, 7258, 23131, 8283, 22620, 8728, 9788, 8779, 9308, 9308, 21597, 9752, 10811, 9808, 10333, 10321, 10845, 10776, 11322, 10834, 11358, 11288, 25633, 11313, 13370, 11357, 20062, 11824, 13370, 12372, 20062, 13360, 20537, 16441, 26170, 17978, 26683, 18003, 20062, 19003, 26684, 19026, 20062, 20028, 26685, 20049, 21597, 20529, 22079, 20559, 21597, 21055, 27201, 21069, 21597, 21569, 27716, 21577, 22620, 22066, 22620, 22578, 23131, 23091, 23642, 23604, 24154, 24117, 24665, 24630, 25176, 25143, 25686, 25656, 26197, 26173, 26707, 26685, 27217, 27204, 27725, 0

SIX_LARGE_TABLE
	DCDU 3126, 8782, 3634, 8786, 4142, 8788, 4652, 8790, 5162, 8791, 5672, 8792, 6182, 8793, 6693, 8794, 7203, 8795, 7714, 8796, 8225, 8796, 8736, 9284, 8778, 9308, 9248, 9780, 9273, 9793, 9294, 9821, 9759, 10289, 9783, 10303, 9807, 10333, 10270, 10799, 10294, 10814, 10321, 10845, 10781, 11309, 10805, 11837, 10834, 11870, 11293, 11819, 11316, 11837, 11804, 12330, 11827, 12348, 11859, 12894, 12316, 12841, 12339, 14395, 12827, 13352, 12850, 14395, 12884, 19550, 13339, 14375, 13850, 14375, 13873, 14395, 14362, 14886, 14385, 21562, 14874, 15909, 15385, 15909, 15897, 17444, 15920, 19514, 16920, 17444, 16954, 26683, 17432, 18979, 18003, 19550, 18968, 21026, 19003, 26684, 19026, 19550, 19479, 21026, 19516, 27197, 19537, 21085, 20029, 27198, 20048, 21085, 20542, 27199, 20559, 21085, 21015, 24609, 21055, 27201, 21069, 22108, 21554, 23108, 21577, 22108, 22084, 23131, 23091, 23642, 23604, 24153, 24117, 24664, 24607, 25121, 24630, 25175, 25143, 25686, 25656, 26197, 26177, 26707, 26689, 27216, 27200, 27724, 0

SEVEN_LARGE_TABLE
	DCDU 2584, 8241, 8216, 27682, 10843, 16989, 11352, 16989, 11861, 16989, 12370, 16989, 12879, 16989, 13388, 16989, 13897, 16989, 14406, 16989, 14916, 16989, 15425, 16989, 15934, 16989, 16443, 16989, 16952, 17500, 17461, 18009, 17970, 18518, 18479, 19027, 18988, 19536, 19497, 20046, 20007, 20555, 20516, 21064, 21026, 21573, 21538, 22082, 22050, 22591, 22562, 23100, 23074, 23609, 23586, 24118, 24098, 24627, 24610, 25137, 25122, 25646, 25634, 26155, 26146, 26664, 26658, 27173, 27672, 28191, 28184, 28700, 28696, 29209, 0

EIGHT_LARGE_TABLE
	DCDU 2630, 8270, 3138, 8274, 3620, 9261, 3648, 8276, 4129, 9264, 4159, 8278, 4639, 9265, 4670, 8279, 5149, 9267, 5181, 8280, 5660, 9268, 5692, 8281, 6171, 9269, 6203, 8282, 6746, 23643, 7194, 9270, 7226, 8283, 7705, 9271, 7771, 22620, 8249, 8776, 8267, 8796, 8728, 9271, 8761, 9284, 8782, 9309, 9240, 9769, 9260, 9784, 9273, 9795, 9296, 9821, 9752, 10278, 9775, 10305, 9809, 10333, 10263, 10788, 10288, 10816, 10322, 10846, 10775, 11299, 10801, 11328, 10835, 11870, 11287, 12322, 11314, 12351, 11860, 20062, 12311, 19489, 12338, 12862, 12851, 20542, 17458, 20543, 17953, 25634, 18003, 20062, 18466, 26147, 18481, 20543, 19007, 26176, 19026, 20062, 19480, 21029, 19504, 20545, 20005, 26150, 20014, 20546, 20049, 21597, 20518, 21048, 20537, 22083, 20559, 21597, 21017, 22071, 21059, 27205, 21069, 21597, 21573, 22620, 22042, 23094, 22074, 22620, 22586, 23131, 23067, 23605, 23099, 23643, 23580, 24116, 23611, 24154, 24093, 24627, 24124, 24665, 24606, 25138, 24637, 25176, 25120, 25649, 25150, 25687, 25635, 26159, 25664, 26197, 26177, 26708, 26693, 27217, 0

NINE_LARGE_TABLE
	DCDU 2601, 8244, 3109, 8248, 3618, 8251, 4129, 8253, 4639, 8254, 5150, 8255, 5661, 8256, 5716, 10846, 6172, 8257, 6683, 8258, 7194, 8258, 7746, 17475, 8217, 8749, 8240, 8771, 8729, 9256, 8756, 9284, 9240, 9766, 9270, 9796, 9299, 10846, 9752, 10277, 9783, 10308, 10264, 10788, 10296, 10820, 10775, 11299, 10809, 11845, 10835, 13405, 11287, 12322, 11834, 13381, 11858, 13405, 12311, 19489, 13371, 14405, 13393, 14940, 14395, 16452, 14416, 14940, 14928, 16475, 15439, 16475, 15930, 16452, 15950, 16475, 16442, 17475, 16462, 17498, 16973, 17498, 17441, 26146, 17466, 18498, 17484, 18521, 17977, 18498, 17995, 18521, 18466, 26147, 18489, 19009, 18506, 19544, 19000, 19520, 19016, 19544, 19480, 21540, 19511, 20031, 19526, 20055, 20004, 26661, 20022, 20542, 20036, 20566, 20517, 26663, 20532, 27196, 20545, 21589, 21031, 27178, 21041, 21589, 21529, 22100, 22041, 22611, 22554, 23122, 23067, 23632, 23580, 24143, 24092, 24653, 24606, 25164, 25119, 25674, 25635, 26183, 26147, 26692, 26666, 27199, 0

ZERO_TABLE
	DCDU 521, 2068, 1031, 2070, 1542, 2071, 2054, 2573, 2064, 2583, 2566, 3082, 2573, 4625, 2579, 3095, 3078, 5641, 3084, 4113, 3092, 5655, 4105, 6666, 4115, 5655, 4618, 6668, 4625, 5655, 5132, 5655, 5639, 6166, 6156, 6676, 0

ONE_TABLE
	DCDU 1031, 2570, 1044, 6679, 1542, 2570, 2566, 4617, 3081, 4631, 0

TWO_TABLE
	DCDU 519, 2570, 532, 6679, 1034, 1547, 1043, 4119, 1542, 2570, 1554, 4119, 2566, 5641, 2577, 4119, 3088, 4119, 3599, 4119, 4105, 6154, 4109, 4627, 4618, 5138, 5130, 5649, 5639, 6159, 0

THREE_TABLE
	DCDU 519, 6153, 532, 5655, 1033, 2570, 1542, 2570, 2061, 5135, 2566, 5641, 2575, 6160, 3084, 5136, 4107, 5137, 4115, 5655, 4617, 5143, 5129, 5645, 5134, 5655, 5641, 6156, 5648, 6166, 6160, 6676, 0

FOUR_TABLE
	DCDU 18, 7187, 525, 2579, 1032, 2579, 1542, 2579, 2566, 3083, 2576, 7187, 4614, 6167, 0

FIVE_TABLE
	DCDU 530, 2581, 1030, 3087, 1045, 6166, 1558, 5655, 2580, 5655, 3078, 6153, 3083, 5134, 4110, 6671, 4623, 6672, 4627, 5655, 5132, 5655, 5644, 6166, 6160, 6677, 0

SIX_TABLE
	DCDU 524, 2581, 1034, 2582, 1544, 2583, 2055, 2583, 2567, 3088, 2580, 5655, 3078, 4106, 3084, 5647, 4102, 6153, 4623, 6672, 4627, 5655, 5136, 5655, 5645, 6166, 6158, 6677, 0

SEVEN_TABLE
	DCDU 518, 2061, 2054, 6665, 2580, 4631, 3089, 4631, 3598, 4631, 4107, 4631, 4617, 5140, 5129, 5649, 5641, 6158, 6153, 6667, 6662, 7176, 0

EIGHT_TABLE
	DCDU 521, 2572, 528, 2069, 1031, 2573, 1038, 2070, 1542, 2071, 2054, 2577, 2067, 2583, 2566, 5641, 2572, 5648, 2580, 5655, 4617, 5649, 4627, 5655, 5137, 5655, 5639, 6157, 5646, 6166, 6152, 6668, 6159, 6677, 0

NINE_TABLE
	DCDU 520, 2063, 1031, 2064, 1044, 4119, 1542, 2065, 2054, 2571, 2060, 2577, 2566, 5641, 2574, 6673, 3091, 4119, 4114, 5142, 4617, 6667, 4620, 5142, 5131, 5653, 5639, 6164, 6152, 6674, 0
	


A_TABLE
	DCDU 529, 2070, 1035, 5134, 1040, 2071, 2063, 2579, 2068, 7191, 2575, 6162, 4110, 6162, 4115, 6167, 4626, 6168, 5132, 5656, 5645, 6168, 6167, 7192, 0

B_TABLE
	DCDU 517, 2583, 2571, 6158, 2580, 5143, 4115, 5143, 4622, 6671, 4626, 5143, 5135, 6166, 6157, 6676, 0

C_TABLE
	DCDU 526, 2580, 1036, 2582, 2059, 2583, 2571, 3087, 2579, 3095, 3083, 6158, 3092, 6167, 5134, 6159, 6156, 6670, 6165, 6679, 0

D_TABLE
	DCDU 525, 2069, 1035, 2071, 2059, 2575, 2067, 2583, 2571, 6670, 2580, 6679, 4110, 6671, 4115, 6679, 4613, 6168, 6149, 6679, 0

E_TABLE
	DCDU 526, 2580, 1036, 2582, 1547, 2582, 2070, 6167, 2571, 5646, 2576, 6674, 2579, 3095, 3092, 6167, 4622, 6674, 5644, 6162, 0

F_TABLE
	DCDU 12, 6671, 2057, 4119, 2566, 4119, 3077, 4119, 4101, 4617, 4613, 6664, 6661, 7175, 0

G_TABLE
	DCDU 525, 2069, 1035, 2071, 1049, 5148, 2059, 2575, 2067, 2583, 2571, 6670, 2580, 6679, 4110, 6671, 4115, 6679, 4120, 5148, 4623, 5148, 5135, 5659, 5647, 6170, 6159, 6679, 0

H_TABLE
	DCDU 517, 2583, 2571, 3087, 3083, 5646, 4622, 6679, 5644, 6167, 0

I_TABLE
	DCDU 532, 6679, 1035, 5134, 3077, 4617, 3086, 5143, 4614, 5129, 0

J_TABLE
	DCDU 1049, 4124, 1547, 5646, 3096, 4124, 3589, 5641, 3598, 4124, 4110, 5147, 5134, 5657, 0

K_TABLE
	DCDU 517, 2583, 2575, 5650, 3602, 5651, 4110, 5653, 4619, 5655, 5643, 6160, 5651, 6167, 6155, 6670, 6164, 6679, 6678, 7191, 0

L_TABLE
	DCDU 517, 4104, 2056, 4116, 2580, 6678, 3094, 6679, 0

M_TABLE
	DCDU 523, 2071, 2059, 6670, 2574, 4631, 5134, 6679, 0

N_TABLE
	DCDU 523, 2583, 2571, 3087, 3083, 5646, 4622, 6679, 5644, 6167, 0

O_TABLE
	DCDU 526, 2580, 1036, 2582, 1547, 2583, 2571, 3087, 2579, 3095, 3083, 5646, 3092, 5655, 4110, 6671, 4115, 5655, 4623, 5655, 5644, 6166, 6159, 6676, 0

P_TABLE
	DCDU 523, 2588, 2571, 3087, 2579, 3095, 3083, 6158, 3092, 6167, 4622, 6671, 4627, 6167, 5135, 6167, 6157, 6677, 0

Q_TABLE
	DCDU 525, 2069, 1036, 2070, 1547, 2071, 2059, 2575, 2067, 2583, 2571, 6670, 2580, 6679, 4622, 6684, 0

R_TABLE
	DCDU 20, 5143, 523, 3086, 1550, 3607, 3084, 3607, 3595, 4111, 4107, 6670, 5134, 7183, 6668, 7183, 0

S_TABLE
	DCDU 533, 5655, 1036, 2577, 1044, 5655, 1547, 2578, 2571, 6158, 2575, 4114, 3602, 6675, 4112, 5651, 4627, 5655, 5649, 6166, 6163, 6677, 0

T_TABLE
	DCDU 11, 6670, 1543, 3604, 2068, 6678, 2582, 6679, 0

U_TABLE
	DCDU 523, 2581, 1045, 7191, 2580, 7191, 4115, 6167, 4619, 6168, 6167, 7192, 0

V_TABLE
	DCDU 11, 2060, 524, 2574, 1038, 2577, 1553, 3092, 2068, 5142, 2575, 3095, 3090, 5143, 4111, 5143, 4620, 5143, 5131, 5652, 5643, 6161, 6155, 6670, 6667, 7180, 0

W_TABLE
	DCDU 11, 2061, 525, 2069, 1045, 3095, 2064, 3095, 2571, 3095, 3083, 4627, 3603, 6676, 4116, 6167, 4625, 6167, 5131, 6167, 6155, 6676, 6667, 7181, 0

X_TABLE
	DCDU 523, 2572, 534, 2583, 1036, 3086, 1044, 2583, 1550, 5647, 1555, 2583, 2063, 5137, 2066, 2583, 2577, 3094, 3085, 5141, 4108, 5142, 4619, 5143, 5131, 5647, 5139, 5655, 5643, 6158, 5652, 6167, 6155, 6669, 6165, 6679, 0

Y_TABLE
	DCDU 11, 2060, 25, 3100, 524, 2063, 1039, 3089, 1553, 3604, 2061, 2582, 2072, 3100, 2580, 3100, 3092, 4123, 3603, 4123, 4111, 4633, 4620, 5143, 5131, 5653, 5643, 6162, 6155, 6671, 6667, 7180, 0

Z_TABLE
	DCDU 523, 6158, 532, 6679, 1043, 3607, 1554, 3607, 2065, 3607, 2576, 3607, 3087, 3607, 3598, 4115, 4110, 4626, 4622, 5137, 5134, 5648, 5646, 6159, 0

A_UPPER_TABLE
	DCDU 21, 2071, 529, 2071, 1038, 2071, 1546, 2071, 2055, 2580, 2566, 3091, 3078, 4620, 3088, 6163, 4108, 5647, 4615, 5139, 5130, 5655, 5646, 6167, 6161, 6679, 6677, 7191, 0

B_UPPER_TABLE
	DCDU 518, 2583, 2566, 5641, 2572, 5647, 2580, 6167, 3599, 6672, 4617, 5648, 5136, 6167, 5639, 6157, 5646, 6167, 6153, 6668, 6160, 6678, 6672, 7189, 0

C_UPPER_TABLE
	DCDU 521, 2068, 1032, 2069, 1543, 2070, 2054, 2572, 2065, 2583, 2566, 3082, 2579, 3095, 3078, 6665, 3092, 6679, 5129, 6666, 6663, 7177, 6678, 7191, 0

D_UPPER_TABLE
	DCDU 518, 2583, 2566, 5129, 2580, 5143, 4105, 6666, 4115, 5143, 4618, 6667, 4626, 5143, 5127, 6166, 6155, 6677, 6667, 7186, 0

E_UPPER_TABLE
	DCDU 518, 2583, 2566, 6665, 2573, 5648, 2580, 6679, 0

F_UPPER_TABLE
	DCDU 1030, 2583, 2566, 7177, 2573, 6160, 0

G_UPPER_TABLE
	DCDU 12, 2065, 521, 2068, 1031, 2070, 2054, 2571, 2066, 2583, 2566, 3082, 2579, 3095, 3078, 6153, 3092, 6679, 3598, 6673, 5129, 6666, 5137, 6679, 6151, 6666, 6664, 7177, 0

H_UPPER_TABLE
	DCDU 518, 2583, 2573, 6672, 4614, 6679, 0

I_UPPER_TABLE
	DCDU 518, 6665, 532, 6679, 2569, 4631, 0

J_UPPER_TABLE
	DCDU 529, 2069, 1045, 6166, 1558, 5655, 2067, 2583, 2566, 6665, 2580, 5655, 4625, 5655, 5129, 5655, 5641, 6166, 6153, 6676, 0

K_UPPER_TABLE
	DCDU 518, 2583, 2575, 5138, 3086, 5138, 3597, 5138, 4108, 5140, 4617, 5142, 5126, 5647, 5136, 5655, 5638, 6158, 5650, 6167, 6150, 6667, 6164, 6679, 6677, 7191, 0

L_UPPER_TABLE
	DCDU 518, 2583, 2580, 6679, 0

M_UPPER_TABLE
	DCDU 518, 2071, 2054, 3085, 2573, 4624, 3081, 4624, 4102, 4624, 4614, 6669, 5133, 6679, 0

N_UPPER_TABLE
	DCDU 518, 2583, 2566, 3087, 3081, 3601, 3595, 4116, 4110, 6679, 4614, 6679, 0

O_UPPER_TABLE
	DCDU 12, 2065, 520, 2069, 1031, 2070, 1542, 2071, 2054, 2571, 2066, 2583, 2566, 5641, 2580, 5655, 4617, 6667, 4626, 5655, 5131, 5655, 5639, 6166, 6152, 6677, 6668, 7185, 0

P_UPPER_TABLE
	DCDU 518, 2583, 2566, 5641, 2575, 5650, 4617, 6666, 4622, 5650, 5130, 5650, 5639, 6161, 6152, 6672, 6666, 7182, 0

Q_UPPER_TABLE
	DCDU 12, 2065, 520, 2069, 1031, 2070, 1542, 2071, 2054, 2571, 2066, 2583, 2566, 5641, 2580, 4633, 3097, 5147, 3611, 6172, 4617, 6667, 4626, 5655, 4636, 6173, 5131, 5655, 5146, 6173, 5639, 6166, 6152, 6677, 6170, 6683, 6668, 7185, 0

R_UPPER_TABLE
	DCDU 518, 2583, 2566, 5641, 2574, 5649, 3601, 5650, 4114, 6164, 4617, 6666, 4621, 5654, 5130, 5655, 5639, 6160, 5652, 6679, 6152, 6671, 6678, 7191, 0

S_UPPER_TABLE
	DCDU 521, 2571, 531, 1559, 1031, 2574, 1542, 2575, 1556, 5655, 2566, 5641, 2571, 3088, 3084, 3600, 3597, 4625, 4617, 6154, 4622, 5655, 5639, 6154, 5647, 6166, 6151, 6665, 6160, 6677, 0

T_UPPER_TABLE
	DCDU 6, 7177, 2569, 4631, 0

U_UPPER_TABLE
	DCDU 518, 2580, 1044, 6166, 1558, 5655, 4614, 5655, 5638, 6166, 6150, 6676, 0

V_UPPER_TABLE
	DCDU 6, 2056, 520, 2060, 1036, 2575, 1551, 3091, 2057, 2583, 2573, 3095, 3089, 5143, 4109, 5143, 4618, 5143, 5126, 5651, 5638, 6160, 6150, 6668, 6662, 7176, 0

W_UPPER_TABLE
	DCDU 6, 1549, 525, 2070, 1046, 3095, 1545, 2071, 2064, 3095, 2570, 3095, 3082, 4629, 4117, 6679, 4624, 6679, 5130, 6679, 5638, 6679, 6662, 7182, 0

X_UPPER_TABLE
	DCDU 6, 2055, 22, 2071, 519, 2568, 533, 2071, 1032, 3082, 1043, 2071, 1546, 5644, 1553, 2071, 2060, 5134, 2064, 2582, 2574, 3093, 3086, 4627, 4105, 4629, 4615, 5134, 4623, 5142, 5126, 5644, 5137, 5655, 5638, 6154, 5651, 6167, 6150, 6665, 6164, 6679, 6662, 7175, 6678, 7191, 0

Y_UPPER_TABLE
	DCDU 6, 2056, 520, 2570, 1034, 3084, 1548, 5646, 2062, 5136, 2576, 4631, 4106, 4631, 4616, 5136, 5126, 5646, 5638, 6156, 6150, 6666, 6662, 7176, 0

Z_UPPER_TABLE
	DCDU 518, 6665, 532, 6679, 1042, 3095, 1553, 3095, 2063, 3095, 2574, 3095, 3084, 3603, 3594, 4113, 4105, 4624, 4617, 5134, 5129, 5644, 5641, 6155, 0

COLON_TABLE
	DCDU 11307, 18483, 11347, 18523, 11818, 17973, 11857, 18012, 12329, 17462, 12368, 17501, 12840, 16950, 12893, 16990, 13366, 16439, 13391, 16478, 17449, 17973, 17500, 18013, 17962, 18484, 18002, 18524, 18476, 18994, 18516, 19034, 0

DEGREE_TABLE
	DCDU 1032, 2573, 1542, 2574, 2062, 5135, 2566, 3082, 2571, 3087, 3078, 5641, 3084, 5135, 4105, 6154, 4107, 5135, 4618, 5135, 5130, 5646, 5640, 6157, 0

	END