.data
	A: .word 1,12,35,473,2,32,4
	B: .word 0,3, 12, 32, 3,4,9
	nextLine: .asciiz "\n"
.text
.globl main
main:
	# A = s0  B = s1  i = t0  n = s2  nextLine $s3
	la $s0, A
	la $s1, B
	li $s2, 7
	la $s3, nextLine
	jal start_loop
	
	li $v0, 10
	syscall
.text
start_loop:
	li $t0, 0
loop:
	# tempA = t1  tempB = t2  ofset = t3
	bge $t0, $s2, end_loop 
	lw $t1, ($s0)
	lw $t2, ($s1)
	add $t1, $t1, $t2
	sw $t1, ($s0)
	
	li $v0, 1
	move $a0, $t1
	syscall
	
	li $v0, 4	
	move $a0, $s3
	syscall
	
	addi $s0, $s0, 4
	addi $s1, $s1, 4
	addi $t0, $t0, 1
	j loop
.text
end_loop:
	jr $ra


	
	
