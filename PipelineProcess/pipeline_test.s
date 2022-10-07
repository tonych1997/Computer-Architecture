main: 
    addi s1, x0, 1 # s1 = 0 + 1
    addi s2, x0, 3 # s2 = 0 + 5
    addi s3, x0, 3 # s3 = 0 + 3
    sw s1, 0(t0)  # t0[0] content = s1 content
    sub t1, s3, s1 # t1 = s3(3) - s1(1)