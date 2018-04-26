.data 
	meu_nome: .asciiz "Tiago"
	space_alloc: .space 100
.text

	li $v0,8 # atribuindo o valor 8 para leitura de uma string
	li $a1, 100 #qtde de caracteres a serem lidos
	la $a0, space_alloc
	syscall #chamada ao sistema
	
	li $v0, 4 # configurando para escrita de um texto no console
	la $a0,meu_nome #carrego o endereco para escrita no console
	syscall
	li $v0,10
	syscall #termina o programa
	
	
	
	
