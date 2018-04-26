.data
	number1: .asciiz "Digite o primeiro numero: "
	number2: .asciiz "Digite o segundo numero: "
	result: .asciiz "Resultado: "

.text
	li $v0,4
	la $a0,number1
	syscall
	
	li $v0,5	#ativa servico de ler inteiro
	syscall
	
	move $t0, $v0	#move valor de v0 para t0
	
	li $v0,4
	la $a0,number2
	syscall
	
	li $v0,5
	syscall
	
	move $t1, $v0
	
	add $t2, $t1, $t0	#realiza soma de t0 e t1 e atribui a t2
	
	li $v0,4
	la $a0,result
	syscall
	
	li $v0,1	#ativa servico de print int
	move $a0, $t2
	syscall