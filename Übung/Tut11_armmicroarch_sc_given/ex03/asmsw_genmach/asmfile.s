.section .text
.global myfn
##INSERT YOUR CODE HERE 
MYFN: 
  SUB R3, PC, PC   @ R3 = 0 
  ADD R3, R3, #1   @ R3 = 0x1 
  LSL R3, R3, #31  @ R3 = 0x80000000 
  ADD R4, R3, #1   @ R4 = 0x80000001 
  ADD R3, R4, #5   @ R3 = 0x80000006
  LSL R3, R3, #1   @ R3 = 0x0000000c 
  LSL R4, R4, #1   @ R4 = 0x00000002 
  STR R4, [R3, #8] @ mem[20]<=0x2 
 
##INSERT YOUR CODE HERE END
