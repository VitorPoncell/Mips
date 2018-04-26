.data
	a: .word 0
	b: .word 15

.text
.globl main
main:
	#a = t1  b = t2  i = s0
	lw $t1, a
	lw $t2, b
	
	jal start_loop
	
	li $v0, 1
	move $a0, $t1
	syscall
	
	li $v0, 10
	syscall
.text
start_loop:
	li $s0, 0
loop:
	bge $s0, 5, end_loop
	
	add $t1, $t1, $t2
	addi $s0, $s0,1
	
	j loop
.text
end_loop:
	jr $ra