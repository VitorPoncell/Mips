.data
	num: .word 5
	one: .word 1
	two: .word 2
	awnser: .space 4
.text
.globl main
main:
	lw $s0, num
	lw $s1, one
	lw $s2, two
	la $s3, awnser
	lw $t2, one
	lw $t3, num
	add $s4, $s0, $s1
	
	slt $t0, $s0, $s2
	beqz $t0, while
	j end_while
 .text
 while:
 	addi $t4, $t4, 1
 	slt $t0, $t4, $s4
 	beqz $t0, end_while
 	mul $t2, $t2, $t4
 	j while
 
 .text
 end_while:
 	sw $t2, ($s3)
 	li $v0, 1
 	move $a0, $t2
 	syscall
	