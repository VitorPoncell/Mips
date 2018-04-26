.data 
	x: .space 256
.text
	li $t0, 10
	la $s0, x
	sw $t0, 129($s0) 
