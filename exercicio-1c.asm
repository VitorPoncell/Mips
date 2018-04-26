.data
	a: .word 10
.text
.globl main	
main:
	# a = t1  b = t2
	lw $t1, a
	
	bgtz $t1, AgreatZero
	
	subi $t2, $t1, 10
	
	li $v0, 1
	move $a0, $t2
	syscall
	
	li $v0, 10
	syscall
	
.text
AgreatZero:
	addi $t2, $t1, 10
	
	li $v0, 1
	move $a0, $t2
	syscall
	
	li $v0, 10
	syscall
	