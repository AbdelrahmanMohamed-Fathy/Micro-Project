;Bases
GPIOA_BASE 			EQU 0x40010800
GPIOB_BASE 			EQU 0X40010C00
RCC_BASE   			EQU 0x40021000
RTC_BASE 			EQU 0x40002800
BKP_BASE 			EQU 0x40006C00
PWR_BASE 			EQU 0x40007000
	
;RCC Offsets
RCC_APB2ENR 		EQU 0x18
RCC_APB1ENR 		EQU 0x1C
RCC_BDCR 			EQU 0x20
RCC_CSR				EQU 0x24

;GPIOx Offsets
GPIOx_CRL 			EQU 0x00
GPIOx_CRH 			EQU 0x04
GPIOx_IDR 			EQU 0x08
GPIOx_ODR 			EQU 0x0C
	
;PWR Offsets
PWR_CR 				EQU 0x00
	
;RTC Offsets
RTC_CRH				EQU 0x00
RTC_CRL 			EQU 0x04
RTC_PRLH 			EQU 0x08
RTC_PRLL 			EQU 0x0C
RTC_CNTH 			EQU 0x18
RTC_CNTL 			EQU 0x1C
RTC_ALRH			EQU 0x20
RTC_ALRL			EQU 0x24
	
;just some color codes, 16-bit colors coded in RGB 565
BLACK				EQU 0x0000
BLUE 				EQU 0x001F
RED  				EQU 0xF800
RED2   				EQU 0x4000
GREEN 				EQU 0x07E0
CYAN  				EQU 0x07FF
MAGENTA 			EQU 0xF81F
YELLOW				EQU 0xFFE0
WHITE 				EQU 0xFFFF
GREEN2 				EQU 0x2FA4
CYAN2 				EQU 0x07FF

;Time Constants
SECONDS         	EQU 1
MINUTES         	EQU 60
HOURS           	EQU 60*60
DAYS            	EQU 60*60*24
MONTHS          	EQU 60*60*24*30
YEARS           	EQU 60*60*24*30*12

;General Constants
LETTER_SPACING 		EQU 15
MODE_BIT        	EQU 12 ; change clock mode pin in GPIOB_IDR
CONFIG_BIT			EQU 13 

;Minutes between theme switch (Theme changes after Time_Offset)
Time_Offset			EQU 2

;TFT_Positions
Time_pos_x			EQU 90
Time_pos_y			EQU 75
Day_pos_x			EQU	5
Day_pos_y			EQU	5
Month_pos_x			EQU	5
Month_pos_y			EQU	30
Year_pos_x			EQU 212
Year_pos_y			EQU 62
Temp_pos_x			EQU 414
Temp_pos_y			EQU	10
Mode_pos_x			EQU 205
Mode_pos_y			EQU 0
	
;Font Sizes
Char_big_size_x		EQU 59
Char_big_size_y		EQU 117
Char_small_size_x	EQU 15
Char_small_size_y	EQU 28

;Pins
RSF					EQU 3	;Registers Synchronized Flag
CNF 				EQU 4	;Configuration Flag
DBP					EQU 8	;Backup Domain write protection
RTCSEL0 			EQU 8	;RTC Clock Select
RTCSEL1 			EQU 9	;RTC Clock Select
RTCEN 				EQU 15	;RTC Enable
BKPEN				EQU 27	;BKP Enable
PWREN				EQU 28	;PWR Enable

;Delays
TFT_INTERVAL 		EQU 0x4FFFFF
INTERVAL_4MS 		EQU 288889
INTERVAL_18MS 		EQU 1300000
INTERVAL_27uS 		EQU 1944
INTERVAL_40uS 		EQU 2880
INTERVAL_50uS 		EQU 3600
INTERVAL_70uS 		EQU 5040
INTERVAL_80uS 		EQU 5760
	
;TFT Bindings
TFT_BUS 			EQU GPIOA_BASE + GPIOx_ODR
TFT_RST 			EQU 11
TFT_CS 				EQU 10
TFT_RS 				EQU 9
TFT_WR 				EQU 8
	
	END