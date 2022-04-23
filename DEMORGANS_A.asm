//2K19/EE/009 Abhik Kumar
// De-Morgan's Theorem
// comp(A+B) = comp(A) or comp(B)
// comp(A or B) = comp(A) + comp (B)

#ORG 2000H
#BEGIN 2000H
// LEFT HAND SIDE
LDA 2000H // Load Accumulator with the contents from memory
MOV B,A // Copy Accumulator value to B
LDA 2001H // Load Accumulator with the contents from memory
ANA B  // Get the AND with B & Accumulator data
CMA // Complliment the value in Accumulator
STA 2002H // Store value in memory

//RIGHT HAND SIDE
LDA 2000H // Load Accumulator with the contents from memory
CMA // Compliment the value in Accumulator
MOV B,A // move data from A to B (Compliment)
LDA 2001H // Load Accumulator with the contents from memory
CMA  // Compliment the value in Accumulator
ORA B // Take OR with Accumulator and B
STA 2003H // Store value in memory

LDA 2002H // Load Accumulator with the contents from memory
MOV B,A // Copy value to B
LDA 2003H // Load Accumulator with the contents from memory
CMP B // Compare
JZ PROVED // Jump If Zero
HLT // Stop
PROVED: 	MVI A,01 // Move Immediate
STA 2030H // Store the value in memory

#ORG 2000H
#DB 0AH, 01H // Setting the value in memory
