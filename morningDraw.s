	IMPORT DRAW_RECTANGLE_FILLED
	IMPORT DRAW_IMAGE
	EXPORT DRAW_MORNING
	EXPORT TREES_TABLE
    AREA mycode, CODE, READONLY

DRAW_MORNING
    PUSH {R0-R12, LR}

	; sky
    MOV R0, #0
    MOV R1, #0
    MOV R3, #480
    MOV R4, #320
    MOV R10, #19902
    BL DRAW_RECTANGLE_FILLED

	; land
    MOV R0, #0
    MOV R1, #210
    MOV R3, #480
    MOV R4, #320
    MOV R10, #32390
    BL DRAW_RECTANGLE_FILLED

	; draw cloud1
    LDR R9, =CLOUD1_TABLE
    MOV R0, #10
    MOV R1, #50
    BL DRAW_IMAGE

    MOV R0, #80
    MOV R1, #50
    BL DRAW_IMAGE

    MOV R0, #200
    MOV R1, #40
    BL DRAW_IMAGE

    MOV R0, #320
    MOV R1, #60
    BL DRAW_IMAGE

    MOV R0, #420
    MOV R1, #60
    BL DRAW_IMAGE

	; draw cloud2
    LDR R9, =CLOUD2_TABLE
    MOV R0, #170
    MOV R1, #60
    BL DRAW_IMAGE

    MOV R0, #230
    MOV R1, #60
    BL DRAW_IMAGE

    MOV R0, #370
    MOV R1, #40
    BL DRAW_IMAGE

    MOV R0, #40
    MOV R1, #70
    BL DRAW_IMAGE

	; draw glass
    LDR R9, =GRASS_TABLE
    MOV R0, #0
    MOV R1, #210
GRASS_LOOP
    BL DRAW_IMAGE
    ADD R0, R0, #20
    CMP R0, #480
    BNE GRASS_LOOP

	; draw trees
    LDR R9, =TREES_TABLE
    MOV R0, #0
    MOV R1, #175
TREES_LOOP
    BL DRAW_IMAGE
    ADD R0, R0, #40
    CMP R0, #480
    BNE TREES_LOOP

    POP {R0-R12, PC}

CLOUD1_TABLE
    DCDU 1, 2054, 1503
    DCDU 2048, 3076, 1503
    DCDU 3072, 4099, 1503
    DCDU 4096, 5634, 1503
    DCDU 5632, 7169, 1503
    DCDU 9216, 13313, 1503
    DCDU 10241, 13314, 1503
    DCDU 10754, 13315, 1503
    DCDU 11267, 13316, 1503
    DCDU 11780, 13317, 1503
    DCDU 12805, 13318, 1503
    DCDU 9, 1036, 1503
    DCDU 12297, 13324, 1503
    DCDU 1034, 2572, 1503
    DCDU 4618, 7180, 1503
    DCDU 11274, 13324, 1503
    DCDU 2571, 13324, 1503
    DCDU 1, 13324, 63455
    DCDU 0

CLOUD2_TABLE
    DCDU 1, 2050, 1503
    DCDU 2048, 3073, 1503
    DCDU 6656, 9729, 1503
    DCDU 9217, 9733, 1503
    DCDU 8706, 9223, 1503
    DCDU 3, 520, 1503
    DCDU 8195, 9223, 1503
    DCDU 516, 1032, 1503
    DCDU 7172, 8200, 1503
    DCDU 1029, 2056, 1503
    DCDU 3589, 4616, 1503
    DCDU 6661, 8200, 1503
    DCDU 2054, 5128, 1503
    DCDU 6150, 8200, 1503
    DCDU 5127, 8200, 1503
    DCDU 9223, 9736, 1503
    DCDU 1, 9736, 63455
    DCDU 0

GRASS_TABLE
    DCDU 1024, 3586, 1348
    DCDU 4096, 6146, 1348
    DCDU 7168, 8195, 1348
    DCDU 8192, 9218, 1348
    DCDU 3585, 6146, 1348
    DCDU 9218, 10243, 1348
    DCDU 1, 1025, 1477
    DCDU 6144, 6661, 1477
    DCDU 9216, 10241, 1477
    DCDU 513, 1027, 1477
    DCDU 1026, 3587, 1477
    DCDU 4610, 7171, 1477
    DCDU 5123, 6661, 1477
    DCDU 8195, 8711, 1477
    DCDU 3586, 4612, 24096
    DCDU 1539, 4612, 24096
    DCDU 6659, 7174, 24096
    DCDU 7171, 8196, 24096
    DCDU 8707, 9733, 24096
    DCDU 6149, 7174, 24096
    DCDU 1, 10248, 32416
    DCDU 0

TREES_TABLE
	DCDU 1, 20515, 32416
	DCDU 1, 1034, 1503
	DCDU 1024, 1545, 1503
	DCDU 1536, 2052, 1503
	DCDU 2048, 7171, 1503
	DCDU 7168, 7681, 1503
	DCDU 7680, 8705, 0
	DCDU 8704, 20481, 1503
	DCDU 7169, 7686, 0
	DCDU 8705, 9220, 0
	DCDU 9217, 20484, 1503
	DCDU 2051, 2564, 0
	DCDU 2563, 7172, 1503
	DCDU 1540, 2057, 0
	DCDU 2564, 3591, 0
	DCDU 3588, 6663, 1503
	DCDU 6660, 7174, 1503
	DCDU 9220, 9737, 0
	DCDU 9732, 11785, 1503
	DCDU 11780, 12294, 1503
	DCDU 12292, 12806, 0
	DCDU 12804, 16390, 1503
	DCDU 16388, 16902, 0
	DCDU 16900, 20486, 1503
	DCDU 6662, 7177, 0
	DCDU 11782, 12297, 0
	DCDU 12806, 13833, 0
	DCDU 13830, 15369, 1503
	DCDU 15366, 16393, 0
	DCDU 16902, 17417, 0
	DCDU 17414, 18953, 1503
	DCDU 18950, 19463, 1503
	DCDU 19462, 19975, 0
	DCDU 19974, 20487, 1503
	DCDU 3591, 4108, 0
	DCDU 4103, 5132, 1503
	DCDU 5127, 6154, 1503
	DCDU 6151, 6665, 1503
	DCDU 18951, 19466, 0
	DCDU 19975, 20490, 0
	DCDU 1033, 1549, 0
	DCDU 6153, 6666, 0
	DCDU 9737, 10250, 0
	DCDU 10249, 11274, 1503
	DCDU 11273, 11788, 0
	DCDU 13833, 14348, 0
	DCDU 14345, 14860, 1503
	DCDU 14857, 15372, 0
	DCDU 17417, 17933, 0
	DCDU 17929, 18954, 1503
	DCDU 10, 1040, 0
	DCDU 5130, 6156, 0
	DCDU 10250, 11277, 0
	DCDU 17930, 18960, 0
	DCDU 2572, 3599, 1348
	DCDU 4108, 5135, 0
	DCDU 5132, 6157, 1348
	DCDU 11788, 12303, 1348
	DCDU 14348, 14864, 0
	DCDU 3597, 4112, 1348
	DCDU 5133, 6159, 0
	DCDU 6157, 6671, 1348
	DCDU 11277, 11792, 0
	DCDU 12813, 13840, 1348
	DCDU 4111, 4624, 1348
	DCDU 4623, 5138, 0
	DCDU 5135, 6160, 1348
	DCDU 9743, 10256, 1348
	DCDU 10255, 11792, 0
	DCDU 13839, 14352, 1348
	DCDU 18959, 19477, 0
	DCDU 19983, 20496, 0
	DCDU 2576, 3602, 1348
	DCDU 9232, 9747, 1348
	DCDU 10256, 11794, 1348
	DCDU 11792, 12306, 0
	DCDU 12304, 12818, 1348
	DCDU 13840, 14355, 0
	DCDU 17936, 18962, 1348
	DCDU 19472, 19987, 0
	DCDU 18, 1043, 1348
	DCDU 3602, 4115, 1348
	DCDU 4114, 4627, 0
	DCDU 6162, 6677, 1348
	DCDU 9746, 10265, 1348
	DCDU 12306, 12822, 0
	DCDU 12818, 13843, 1348
	DCDU 17426, 17949, 1348
	DCDU 2579, 3609, 1348
	DCDU 4115, 4629, 1348
	DCDU 4627, 5141, 0
	DCDU 5139, 6166, 1348
	DCDU 10259, 11285, 1348
	DCDU 11795, 13845, 0
	DCDU 14867, 15382, 1348
	DCDU 16915, 18965, 1348
	DCDU 19987, 20501, 1348
	DCDU 4629, 6166, 1348
	DCDU 9237, 10262, 1348
	DCDU 11285, 11801, 1348
	DCDU 11797, 12310, 1348
	DCDU 14357, 14872, 1348
	DCDU 17941, 18966, 0
	DCDU 18965, 19990, 1348
	DCDU 22, 1047, 1348
	DCDU 3606, 4120, 1348
	DCDU 4118, 4632, 0
	DCDU 6166, 6680, 1348
	DCDU 7702, 9240, 1348
	DCDU 10262, 11801, 1348
	DCDU 12310, 12824, 1348
	DCDU 12822, 13849, 0
	DCDU 13846, 14361, 1348
	DCDU 16918, 17947, 1348
	DCDU 17942, 18968, 1348
	DCDU 18966, 19480, 0
	DCDU 2072, 2589, 1348
	DCDU 4120, 6169, 1348
	DCDU 8728, 12313, 1348
	DCDU 12312, 12832, 0
	DCDU 18968, 19483, 1348
	DCDU 19480, 19995, 0
	DCDU 1049, 2589, 1348
	DCDU 3609, 4125, 1348
	DCDU 4633, 5151, 0
	DCDU 6169, 6683, 0
	DCDU 7705, 8733, 1348
	DCDU 10265, 12827, 0
	DCDU 14361, 14876, 1348
	DCDU 17945, 18972, 1348
	DCDU 27, 4636, 1348
	DCDU 5147, 6172, 0
	DCDU 6171, 9757, 1348
	DCDU 9755, 11804, 1348
	DCDU 11803, 12322, 0
	DCDU 12827, 14876, 1348
	DCDU 18971, 19484, 0
	DCDU 28, 1055, 0
	DCDU 2588, 3615, 1348
	DCDU 4124, 5149, 0
	DCDU 5148, 9757, 1348
	DCDU 9756, 11293, 0
	DCDU 11292, 11805, 1348
	DCDU 13852, 14365, 0
	DCDU 14876, 16413, 1348
	DCDU 16412, 16925, 0
	DCDU 16924, 17949, 1348
	DCDU 18972, 19485, 1348
	DCDU 19484, 20002, 0
	DCDU 1053, 1568, 0
	DCDU 1565, 2079, 1348
	DCDU 2077, 2591, 0
	DCDU 3613, 4128, 0
	DCDU 4125, 4639, 1348
	DCDU 5149, 6178, 0
	DCDU 6173, 6688, 0
	DCDU 6685, 7199, 1348
	DCDU 7197, 7715, 0
	DCDU 7709, 9247, 0
	DCDU 9245, 10271, 1348
	DCDU 10269, 13856, 0
	DCDU 13853, 14879, 1348
	DCDU 14877, 15392, 0
	DCDU 15389, 16415, 1348
	DCDU 16413, 16928, 60928
	DCDU 16925, 17440, 0
	DCDU 17437, 20511, 0
	DCDU 31, 1056, 1348
	DCDU 1567, 2082, 0
	DCDU 2079, 2594, 60928
	DCDU 2591, 3618, 0
	DCDU 4127, 4640, 0
	DCDU 4639, 5155, 1348
	DCDU 6687, 7714, 0
	DCDU 7711, 8739, 60928
	DCDU 8735, 16416, 0
	DCDU 17439, 18979, 1348
	DCDU 18975, 20512, 0
	DCDU 32, 1058, 0
	DCDU 1056, 1571, 1348
	DCDU 3616, 5155, 1348
	DCDU 6176, 6691, 1348
	DCDU 8736, 9251, 60928
	DCDU 9248, 9763, 0
	DCDU 9760, 10274, 0
	DCDU 10272, 11810, 1348
	DCDU 12320, 12835, 1348
	DCDU 12832, 14370, 1348
	DCDU 14368, 14882, 0
	DCDU 14880, 19491, 1348
	DCDU 20000, 20514, 1348
	DCDU 34, 7203, 1348
	DCDU 9762, 10275, 1348
	DCDU 10274, 11299, 0
	DCDU 11298, 12835, 1348
	DCDU 12834, 13859, 0
	DCDU 13858, 20003, 1348
	DCDU 20002, 20515, 0
	DCDU 0
	END