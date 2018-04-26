.data
	A: .word 1,12,35,473,2,32,4
	primeiroIndice: .word 1
	ultimoIndice: .word 4

.text
.globl main
main:
	# aAdress = t0  primeiroIndice = t1  ultimoIndice = t2  indice atual = t3  
	# adress = t4 valorArray = t5  result = t6
	la $t0, A
	lw $t1, primeiroIndice
	lw $t2, ultimoIndice

	jal start_loop
	
	li $v0, 1
	move $a0, $t6
	syscall
	
	li $v0, 10
	syscall
.text
start_loop:
	move $t3, $t1
loop:
	bgt $t3, $t2, end_loop
	
	sll $t4, $t3, 2
	add $t4, $t0, $t4
	lw $t5, ($t4)
	add $t6, $t6, $t5
	addi $t3, $t3, 1
	
	j loop
.text
end_loop:
	jr $ra

