main: 
    addi s1, x0, 1 # s1 = 0 + 1
    addi s2, x0, 3 # s2 = 0 + 5
    beq  s1, s2, jump
    
jump:
    add t1, s1, s2 # t1 = 1 + 3