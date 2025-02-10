; a. Initialize a blank array of size n, where 5 <= n <= 20

; b. Create a loop that loops a total of n times, during each loop display a prompt asking the user to input a number

; c. Capture the user’s input (using GETC) and subtract x0030 from the ASCII character the user entered

; d. Using the STR instruction, store the result into the first available memory location of the array

; e. For subsequent entries, store the user’s input (with x0030 subtracted) in the next blank entry in the array

; f. Once the loop has finished, HALT your program

; g. You can assume the user will always enter a single digit number 0 to 9
.ORIG x3000

AND R0, R0, #0
ST R0, VAR_LOOP_COUNT

START_LOOP

; If Loop Count - Loop Max is negative, END_LOOP
LD R0, VAR_LOOP_COUNT
LD R1, VAR_ARRAY_SIZE
NOT R1, R1
ADD R1, R1, #1
ADD R0, R0, R1
BRzp END_LOOP

LEA R0, PROMPT
PUTS
GETC
OUT

; Convert from Ascii to integer
LD R1, NEG_ASCII
ADD R0, R0, R1

; ARRAY[ARRAY_SIZE]
LD R1, VAR_ARRAY_ADDRESS_START
LD R2, VAR_LOOP_COUNT
ADD R1, R1, R2
STR R0, R1, #0

; Loop count ++
ADD R2, R2, #1
ST R2, VAR_LOOP_COUNT

BRnzp START_LOOP
END_LOOP

HALT

VAR_ARRAY_SIZE .FILL #5
VAR_ARRAY_ADDRESS_START .FILL x8000
VAR_LOOP_COUNT .FILL #0
NEG_ASCII .FILL #-48
PROMPT .STRINGZ "\nENTER A NUMBER BETWEEN 1 AND 9: "
.END