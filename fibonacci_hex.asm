fibonacci:
    li $r0, 0
    li $r1, 1
    li $r2, 5 //n
    li $r3, 0 //a
    li $r4, 1 //b
    li $r5, 0 //c
    li $r6, 2 //i
    for_start:
        $r7, $r3, $r0
        beq $r2, $r0,looper
        beq $r6, $r2,for_end
        add $r5, $r3, $r4
        add $r3, $r4, $r0
        add $r4, $r5, $r0
        add $r6, $r6, $r1
        jmp for_start
    for_end:
    add $r7, $r4, $r0

looper:
    jmp looper
