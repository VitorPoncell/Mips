.data
	x: .word 10
	y: .word -45
	result: .space 4
.text
.globl main
main:
	# x = s0  y = s1
	lw $s0, x
	lw $s1, y
	
	jal start_multipli
	
	sw $s2, result
	
	li $v0, 1
	move $a0, $s2
	syscall
	
	li $v0, 10
	syscall
	
.text
start_multipli:
	# result = s2
	# t0 = 1 comparar bits para verificar se y é impar
	# t1 = resultado comparacao de t0

	li $s2, 0
	li $t0, 1
	li $t1, 0

multipli_loop:
	beq $s1, $zero, multipli_end	# quando s1 chegar a zero sai da multiplicacao
	and $t1, $t0, $s1			# compara y com t0 para ver se é impar
	beq $t1, 1, sum	# y sendo impar fazer adicao antes
	beq $t1, 0, shift	# y sendo par fazer shift
.text
sum: 
	addu $s2, $s2, $s0		

shift:
	sll $s0, $s0, 1			# multiplica x por 2 
	srl $s1, $s1, 1			# divide x por 2

	j multipli_loop	
.text
multipli_end:
	jr $ra			
