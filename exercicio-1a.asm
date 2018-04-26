.data
	x: .word 5
	y: .word 4
.text
	# x = s0  y = s1 z = s3 z = a + b + c a = t0  b = t1  c = t2
	lw $s0, x
	lw $s1, y
	
	#c
	li $t2, 6
	
	#b
	mul $t1, $s1, 3
	
	#a
	mul $t0, $s0, $s0
	mul $t0, $t0, 5
	
	#a + b = temp
	add $t0, $t0, $t1
	# temp + c
	add $s3, $t0, $t2
	
	#print
	li $v0, 1
	move $a0, $s3
	syscall
	
	li $v0, 10
	syscall
	
	
	
	
	
