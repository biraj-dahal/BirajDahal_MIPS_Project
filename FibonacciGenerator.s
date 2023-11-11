# Biraj Dahal 
# @03070737
# biraj.dahal@bison.howard.edu
# Fibonacci Series Project Computer Organization I
# Code tested, and working on my Computer (M1 Macbook Pro) - Arithmetic Overflow after Fibonancci 46. So to prevent error select N <=46.

.data
	askUser : .asciiz "Find fibonacci of number (N>=25). Enter N: " # using it to store input question. through null terminated .ascii
	invalid : .asciiz "Illegal Number!"  # using it to store output warning. through null terminated .ascii
	newline: .ascii "\n" #using it to store address of a new line character
.text
.globl main

# go to main branch
main:
	#initial question
	addi $v0, $0, 4  # add the immediate "4" to register $v0 - $v0 when stores system call number of 4 requests print-string service from OS.
	la $a0, askUser # load the address of he askUser stored data into $a0 - $a0 is used to pass arguments to system, in my case to print string OS service.
	syscall # Make request to OS about $v0 with "printstring" with argument address $a0 "askUser"

	# Working so far

	addi $v0, $0, 5 # load the immediate "5" to register $v0 - $v0 when stores system call number of 5 requests read-integer service from OS from the console input.
	syscall # make the request to OS about $v0 with "read integer" which takes in integer from user, and temp store to $v0
	add $t0,$0, $v0 # add temporarily stored input value in $v0 to $0 -which is 0

	# Some Error when ever input number higher than 10, storing not the number but a character instead.(October 29, 2023)
	# Confirmed by printing out integer. Even if garbage value stored, when printing out, it is working fine.(October 29, 2023) 
	# for printing the retrieved value(to check):	li $v0, 1 	move $a0, $t0 		syscall

	blt $t0, 25, exitOnInvalid # go to branch exitOnInvalid if the value stored in register $t0 is less than 25 - branch on less than
