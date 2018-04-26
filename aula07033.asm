.data
	D: .space 40
.text
	addi $s0, $zero, 0
	addi $s1, $zero, 2
	
	la $s2, D
	
while:

	bgt $s0, 9 , end_while #verifica se s0 é maior que 9
	
	add $t1, $s0, $s1 # b + a
	
	sll $t2, $s0, 2 # salva em t2 valor de s0 vezes 4
	
	add $t3, $s2, $t2 # salav em t3 a posicao a ser usada
	
	sw $t1, 0($t3)
	move $a0, $t1
	li $v0, 1
	syscall
	    
	addi $s0 , $s0, 1
	
	J while

end_while:
	li $v0, 1
	lw $a0, 36($s2)
	syscall
	
	li $v0,10
	syscall
