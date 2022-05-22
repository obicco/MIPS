.data
	message1:	.asciiz "The numbers are equal."
	message2:	.asciiz "The numbers are different."
.text
.globl main
.ent main

main:
	addi	$t0, $zero, 5
	addi	$t1, $zero, 20

	beq		$t0, $t1, numbersEqual
	bne		$t0, $t1, numbersDifferent

	li 		$v0, 10
	syscall

	numbersEqual:
		li	$v0, 4
		la	$a0, message1
		syscall

	numbersDifferent:
		li	$v0, 4
		la	$a0, message2
		syscall