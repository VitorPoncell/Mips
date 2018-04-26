.data

	Hello : .asciiz "Hello world"
	
.text
	li $v0,4	#ativa servico de print string
	la $a0,Hello 	#recupera a string a ser impressa
	syscall 	#chama o processo do sistema
