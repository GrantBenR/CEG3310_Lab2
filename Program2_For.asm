; a. Increment a register by 1 in every cycle of the loop to keep track of the loop iterations

; b. Store the maximum amount of iterations that the loop can have in a memory location

; c. Your for loop should start at 0 iterations (i.e. i = 0) and stop looping once the maximum is reached

; d. Store the result (R3) into the memory address x8001 and HALT your program
.ORIG x3000

;Zero R0 and store in VAR_I
AND R0, R0, #0
ST R0, VAR_I

START_LOOP

; If R0 - ITERATE_MAX is negative, END_LOOP
LD R0, VAR_I
LD R1, VAR_ITERATE_MAX
NOT R1, R1
ADD R1, R1, #1
ADD R0, R0, R1
BRnzp END_LOOP


LD R0, VAR_I
LD R1, VAR_ADD_AMOUNT
ADD R0, R0, R1
OUT
LD R0, ASCII_NEWLINE
OUT

; VAR_I ++
LD R0, VAR_I
ADD R0, R0, #1
ST R0, VAR_I

BRnzp START_LOOP
END_LOOP

STI R3, OUTPUT_LOCATION
HALT

; VARIABLES:
VAR_I .FILL #0
VAR_ADD_AMOUNT .FILL #5
VAR_ITERATE_MAX .FILL #10
OUTPUT_LOCATION .FILL x8001

ASCII_NEWLINE .FILL #10
.END