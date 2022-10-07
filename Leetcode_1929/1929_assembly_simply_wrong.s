.data
arr1: .word 1, 2, 3 # a[3] = {1, 2, 3}
len1: .word 3 # array length of a is 3
len2: .word 6 # array length of b is 6
space: .string " " # space

.text
# s1 = arr a base address
# s2 = arr b base address
# s3 = array length of a
# s4 = array length of b
# t0 = i
# t1 = a[i]
# t2 = b[i]

main:
    la s1, arr1             # s1 = a
    lw s3, len1             # s3 = 3
    lw s4, len2             # s4 = 6
    add t0, x0, x0          # i = 0
    jal ra, loopCon         # jump to loop for concatenation 
    add t0, x0, x0          # i = 0
    jal ra, loopPrint       # jump to loop for print
    jal ra, exit            # jump to exit

loopCon:
    lw t1, 0(s1)            # t1 = a[i]
    sw t1, 0(s2)            # b[i] = t1
    sw t1, 12(s2)           # b[i+3] = t1
    addi s1, s1, 4          # address move forward
    addi s2, s2, 4          # address move forward    
    addi t0, t0, 1          # i++
    blt t0, s3, loopCon     # if i < 3, go to loopCon
    ret                     # else, return to main

loopPrint:
    lw t2, 0(s2)            # t2 = b[i]
    addi s2, s2, 4          # address move forward
    add a0, t2, x0          # load result of array b
    li a7, 1                # print integer 
    ecall
    la a0, space            # load string - space
    li a7, 4                # print string
    ecall
    addi t0, t0, 1          # i++
    blt t0, s4, loopPrint   # if i < 6, go to loopPrint
    ret                     # else, return to main

exit: 
    li a7, 10               # end program
    ecall