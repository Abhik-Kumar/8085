//2K19/EE/009 Abhik Kumar
// De-Morgan's Theorem
// comp(A+B) = comp(A) or comp(B)
// comp(A or B) = comp(A) + comp (B)

#ORG 2000H // 
LDA 2000H // Load Accumulator with the contents from memory
CMA // Complliment the value in Accumulator
MOV B,A // move data from A to B
LDA 2001 // Load Accumulator with the contents from memory
CMA  // Complliment the value in Accumulator
ORA B // Get the AND with B & Accumulator data
STA 2002 // Store value in memory
LDA 2000 // Load Accumulator with the contents from memory
MOV B,A // Copy Accumulator value to B
LDA 2001 // Load Accumulator with the contents from memory
ANA B // Take OR with A and B
CMA // Complliment the value in Accumulator
STA 2003 // Store value in memory

LDA 2002 // Load Accumulator with the contents from memory
MOV B,A // Copy value to B
LDA 2003 // Load Accumulator with the contents from memory
CMP B // Compare
JZ PROVED // Jump If Zero
HLT // Stop
PROVED: 	MVI A,01 // Move Immediate
STA FFFF // Store the value in memory

#ORG 2000H
#DB 0AH, 01H