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
	
	
	EXPORT __main
	IMPORT LCD_INIT
	IMPORT LCD_COMMAND_WRITE
	IMPORT LCD_DATA_WRITE

	AREA	MYCODE, CODE, READONLY
	ENTRY
	
__main FUNCTION

	;CALL FUNCTION SETUP
	BL SETUP

	
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


	END
		