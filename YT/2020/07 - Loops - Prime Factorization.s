.data
q:      .asciiz "Enter a number to factor: "
r:      .asciiz "The prime factorization of "
r2:     .asciiz " is "
comma:  .asciiz ", "
nl:     .asciiz ".\n"
.text
main:
        #Query for a number to factor
        li      $v0, 4
        la      $a0, q
        syscall

        li      $v0, 5
        syscall
        move    $t0, $v0                #the number to factor is in $t0

        #Dispaly the prime factorization of the given number
        li      $v0, 4
        la      $a0, r
        syscall

        li      $v0, 1
        move    $a0, $t0
        syscall

        li      $v0, 4
        la      $a0, r2
        syscall

#       while (i < n)
#               if ((n % i) == 0) {
#               print "i, ";
#               n /= i;
#       } else {
#               i++;
#       }
#       }
#       print "n.\n";

        li      $t1, 2          #Counter starts at 2

while:  bge     $t1, $t0, endWhile

        div     $t0, $t1        # n / i => lo R hi
        mfhi    $t2             # n % i
        bnez    $t2, else

        li      $v0, 1
        move    $a0, $t1
        syscall

        li      $v0, 4
        la      $a0, comma
        syscall
        mflo    $t0             # n /= i

        j       while

else:   addi    $t1, $t1, 1
        j       while

endWhile:
        li      $v0, 1
        move    $a0, $t0
        syscall

        li      $v0, 4
        la      $a0, nl
        syscall

        li      $v0, 10
        syscall
