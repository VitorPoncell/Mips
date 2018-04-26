.data
	B: .word 1,2,3,4,5,6
.text
	addi $s0,$zero,2
	addi $s1,$zero,8
	addi $s2,$zero,2
	
	la $t0,B
	lw $t1, 16($t0)
	
	add $t2, $s2, $t1
	
	add $t3, $s1, $t2
	
	li $v0,1
	move $a0, $t3
	syscall
	
	li $v0,10
	syscall
