//2K19/EE/009 Abhik Kumar
// Find whether the number is positive or negative

LXI H, 1001H // Load number to memory
MOV A, M // Move content of memory to 'A'
RAL
JC LOOP // Condition
	MVI A, 00H // Move Immediate For Positive
	STA 1002H // store the accumulator value at address
	HLT // Stop for positive number

LOOP: 	MVI A, 01H  // Move Immediate For Negative
	STA 1002H // store the accumulator value at address
	HLT // Stop for negative number

# ORG 1001H
#DB 03H // Set data in  memory 1001 = 03 (positive)
