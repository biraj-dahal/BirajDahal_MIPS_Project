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
