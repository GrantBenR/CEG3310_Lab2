; a. The x and y variables should exist in memory after loading your program (use .FILL)

; b. Assume (6 >= x >= 0) and (6 >= y >= 0)

; c. Store the result of your exponential operation into the memory address x8000 and HALT your program

START

LD R0, VAR_X
LD R1, VAR_Y

ST R0, RESULT_ADDR

HALT

VAR_X .FILL #6
VAR_Y .FILL #3

RESULT_ADDR .FILL x8002

FIVE .FILL #5

.END