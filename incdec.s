;this is to be the base the others use, have it implemented in alarm/timer set then have the file removed
GPIOB_BASE 		EQU 0X40010C00
GPIOx_IDR 		EQU 0x08
INPUT_PINS      EQU GPIOB_BASE + GPIOx_IDR
SECONDS         EQU 1
MINUTES         EQU 60
HOURS           EQU 60*60
DAYS            EQU 60*60*24
MONTHS          EQU 60*60*24*30
YEARS           EQU 60*60*24*30*12

    AREA mycode, CODE, READONLY

    
    LDR R0, =INPUT_PINS
    LDR R1, [R0]
    LDR R0, =SECONDS ;seconds is a placeholder, add your start according to your least settable time

ALARM_TIMER_SET ;the loop, push registers EXCEPT the clock/alarm/timer register

    ;Selecting increment/decrement value
    AND R2, R1, #1 ;pin B0
    CMP R2, #1
    BNE SKIP_MODE_INC

    ;The last one to loop on is the highest settable value, adjust accordingly
    CMP R6, #0
    BE SET_MINUTE
    CMP R6, #1
    BE SET_HOUR
    CMP R6, #2
    BE SET_DAY
    CMP R6, #3
    BE SET_MONTH
    CMP R6, #4
    BE SET_YEAR
    CMP R6, #5
    BE SET_SECOND

SKIP_MODE_INC
    AND R2, R1, #2 ;pin B1
    CMP R2, #1
    BNE SKIP_MODE_DEC
    
SKIP_MODE_DEC

    ;The last one to loop on is the highest settable value, adjust accordingly
    CMP R6, #0
    BE SET_YEAR
    CMP R6, #1
    BE SET_SECOND
    CMP R6, #2
    BE SET_MINUTE
    CMP R6, #3
    BE SET_HOUR
    CMP R6, #4
    BE SET_DAY
    CMP R6, #5
    BE SET_MONTH

    ;Incrementing/Decrementing the selected value
    AND R2, R1, #1024 ;pin B11
    CMP R2, #1
    ;ADD (your register), R5

    AND R2, R1, #2048
    CMP R2, #1
    ;SUB (your register), R5
    
    B ALARM/TIMER_SET

SET_SECOND
    
    LDR R0, =SECONDS
    LDR R5, [R0]
    MOV R6, #0
    B ALARM_TIMER_SET

SET_MINUTE

    LDR R0, =MINUTES
    LDR R5, [R0]
    MOV R6, #1
    B ALARM_TIMER_SET

SET_HOUR

    LDR R0, =HOURS
    LDR R5, [R0]
    MOV R6, #2
    B ALARM_TIMER_SET

SET_DAY

    LDR R0, =DAYS
    LDR R5, [R0]
    MOV R6, #3
    B ALARM_TIMER_SET


SET_MONTH

    LDR R0, =MONTHS
    LDR R5, [R0]
    MOV R6, #4
    B ALARM_TIMER_SET

SET_YEAR

    LDR R0, =YEARS
    LDR R5, [R0]
    MOV R6, #5
    B ALARM_TIMER_SET
