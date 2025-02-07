; a. Initialize a blank array of size n, where 5 <= n <= 20

; b. Create a loop that loops a total of n times, during each loop display a prompt asking the user to input a number

; c. Capture the user’s input (using GETC) and subtract x0030 from the ASCII character the user entered

; d. Using the STR instruction, store the result into the first available memory location of the array

; e. For subsequent entries, store the user’s input (with x0030 subtracted) in the next blank entry in the array

; f. Once the loop has finished, HALT your program

; g. You can assume the user will always enter a single digit number 0 to 9
.ORIG x3000

START



HALT

VAR_ARRAY_SIZE .FILL #5
VAR_ARRAY_ADDRESS_START .FILL #8002
VAR_LOOP_MAX .FILL #0
VAR_LOOP_COUNT .FILL #0

.END