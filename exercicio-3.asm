.data
	string: .asciiz "Arquitetura de Computadores"
	char: .byte 'e'
.text
.globl main
main:
	# string = s0  char = s1  contador = s2
	la $s0, string
	lb $s1, char

	jal start_loop
	
	li $v0, 1
	move $a0, $s2
	syscall
	
	li $v0, 10
	syscall

.text
start_loop:
	move $t1, $s0
	li $s2, 0
loop:
	lb $t0, ($t1)
	beq $t0, $s1, increment
	beqz $t0, end_loop
continue:
	addi $t1, $t1, 1 
	j loop
.text
increment:
	addi $s2, $s2, 1
	j continue
.text
end_loop:
	jr $ra
