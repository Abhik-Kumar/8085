//2K19/EE/009 Abhik Kumar
// Find whether no is odd or even?

LDA 1001H // Load number to memory
RAR // Checking
JC LOOP // Condition
	MVI A, 00H // Move Immediate For even
	STA 1002H // store the accumulator value at address
	HLT // Stop for even number

LOOP: 	MVI A, 01H  // Move Immediate For odd
	STA 1002H // store the accumulator value at address
	HLT // Stop for odd number

# ORG 1001H
#DB 09H // Set data in  memory 1001 = 09 (negative)
