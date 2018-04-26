.data
	a: .word 10
	b: .word 15
	c: .word 7
	d: .byte 'a'

.text
.globl main
main:
	# e = s0
	lw $t1, a
	lw $t2, b
	lw $t3, c
	lb $t4, d
	blt $t1, $t2, AlessB
.text
AlessB:
	bnez $t3, CnotZero
.text
CnotZero:
	beq $t4, 'a', DequalA
.text
DequalA:
	li $s0, 1
	
	li $v0, 1
	move $a0, $s0
	syscall
	
	li $v0, 10
	syscall
	
	