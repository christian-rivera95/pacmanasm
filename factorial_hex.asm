factorial:
    li $r0, 0
    li $r1, 1
    li $r2, 4       //n
    li $r3, 1       //res
    li $r4, 2      //i
    loop_start: 
        
        beq $r4, $r2, loop_end
        mul $r3, $r3, $r4
        add $r4, $r4, $r1
        jmp loop_start

    loop_end:
add $r7, $r3, $r0

looper:
    jmp looper