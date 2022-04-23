//2K19/EE/009 Abhik Kumar
// Program to find division of 8 bit number

# ORG 1000H // Set assembler location counter
# BEGIN 1000H // Program Execution starts at this location
	   LHLD 2501 // Load the value from memory
	   LDA 2503 // Load 8 bit from the 16 bit memory (2503)
	   MOV B,A // Move the content of Accumulator to "B"
	   MVI C,06 // Set the value of "C"

LOOP:	   DAD H //Addition of HL pair with HL
	   MOV A,H //Move the content of "H" to Accumulator
	   SUB B // Subtract "B" from Accumulator
	   JC AHEAD //Jump if carry
	   MOV H,A // move the content of Accumulator to "H"
	   INR L // Increase the "L" by 1

AHEAD:	   DCR C // Decrease "C" by 1
	   JNZ LOOP // Jump if not zero
	   SHLD 2504 // Store value of "HL" pair at memory location
	   HLT

# ORG 2501H
// LSB OF DIVIDEND , MSB OF DIVIDEND , DIVISOR
# DB 9DH, 36H,10H // Set data in memory 2501 = 9F, 2502 = 36, 2503 = 10	


// ANSWER
// AT ADDRESS 2504 - 7FH, QUOTIENT
// AT ADDRESS 2505 - B7H, REMAINDER
