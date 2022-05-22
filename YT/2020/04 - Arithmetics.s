    .data
nl:     .asciiz "\n"
    .text    

main:   
        li $t0, 2
        li $t1, 7
        li $t2, 5
        li $t3, 8

        add $a0, $t0, $t3   # $a0 = $t0 + $t3   (2+8)
        li $v0, 1
        syscall

        li $v0, 4
        la $a0, nl
        syscall

        addi $a0, $t2, 17   # $a0 = $t2 + 17    (5+17)
        li $v0, 1
        syscall

        li $v0, 4
        la $a0, nl
        syscall

        sub $a0, $t0, $t1   # $a0 = $t0 - $t1   (2-7)
        li $v0, 1
        syscall

        li $v0, 4
        la $a0, nl
        syscall

        mult $t1, $t2       # [Hi Lo] = $t1 * $t2
        mflo $a0            # $a0 = $t1 * $t2
        li $v0, 1
        syscall

        li $v0, 4
        la $a0, nl
        syscall

        mfhi $a0            # $a0 = 0 because upper 32bits are 0
        li $v0, 1
        syscall

        li $v0, 4
        la $a0, nl
        syscall

        div $t1, $t0        # [Hi Lo] = $t1 / $t2
        mflo $a0
        li $v0, 1
        syscall

        li $v0, 4
        la $a0, nl
        syscall

        mfhi $a0
        li $v0, 1
        syscall

        li $v0, 4
        la $a0, nl
        syscall

        mul $a0, $t1, $t2   # $a0 = $t1 * $t2
        li $v0, 1
        syscall

        li $v0, 4
        la $a0, nl
        syscall

        div $a0, $t1, $t0   # $a0 = $t1 / $t0
        li $v0, 1
        syscall

        li $v0, 4
        la $a0, nl
        syscall

        rem $a0, $t1, $t0   # $a0 = %t1 % $t0
        li $v0, 1
        syscall

        li $v0, 4
        la $a0, nl
        syscall

        li $v0, 10
        syscall