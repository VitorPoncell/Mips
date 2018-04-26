.data 
	B: .word 1,2,3,4,5,6
	A: .word 7,8,9,10,11,12,13,14
.text
	addi $s1,$zero,8
	addi $s2,$zero,2
	
	la $s7, B # carregado endereco do array B
	lw $t0,16($s7) # carregado valor B(4)
	
	add $t0, $t0, $t0 # multiplicado por 4 para se tornar um ofset valido
	add $t0, $t0, $t0	
	
	la $s6, A #carregado endereco do array A
	add $t1 , $s6, $t0 #adiciona endereco de A mais o valor do ofset gerado pelo indice recebido em B
	lw $t2, 0($t1) #carrega valor de A(x)
	
	sub $t3, $s1, $t2 #realiza a subtracao
	
	li $v0, 1 #imprime no console 
	move $a0, $t3 #carrega em a0 o valor a ser impresso
	syscall
	
	li $v0,10 #termina a aplicacao
	syscall
