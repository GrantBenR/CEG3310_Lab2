; a. An if-else statement will execute only one out of two blocks of code

; b. Your if-else statement should check if R0 = R1, then make R3 = 5, if R0 ≠ R1, then make R3 = -5

; c. The values used for R0 and R1 should exist in memory after loading your program (use .FILL)

; d. Store the result (R3) of your if-else statement into the memory address x8002 and HALT your program
.ORIG x3000

START

LD R0, VAR_0
LD R1, VAR_1
NOT R1, R1
ADD R1, R1, #1
ADD R0, R0, R1
BRnp NOT_EQUAL
LD R3, VAR_EQUAL
BR END_IF

NOT_EQUAL
LD R3, VAR_NOT_EQUAL

END_IF
STI R3, DEST_ADDRESS
HALT

VAR_0 .FILL #1
VAR_1 .FILL #1
VAR_NOT_EQUAL .FILL #-5
VAR_EQUAL .FILL #5
DEST_ADDRESS .FILL x8002
.END