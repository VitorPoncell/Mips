.data
	name: .asciiz "Vitor escreveu: "
	ask: .asciiz "Digite"
	buffer: .space 50
.text
	li $v0,4
	la $a0,ask
	syscall

	li $v0,8	
	la $a0,buffer
	la $a1, 50
	move $t0,$a0
	syscall	
	
	li $v0,4
	la $a0,name
	syscall
	
	la $a0, buffer
	move $a0,$t0
	li $v0,4
	syscall

	li $v0, 10
	syscall