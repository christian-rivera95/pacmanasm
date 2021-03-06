exponent:
    li $r0, 0
    li $r1, 1
    li $r2, 2 // base
    li $r3, 3 // exponente
    li $r7, 1 //res
    while_start:
        beq $r3, $r0,while_end
        mul $r7, $r7, $r2
        sub $r3, $r3, $r1 //exponente --
        jmp while_start
    while_end:

looper:
    jmp looper
