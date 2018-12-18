.data
	hex: .space 9
	alpha: .byte 'A','B','C','D','E','F'
.text

.globl main
main:
	li $v0 5
	syscall	
	
	move $s0 $v0
	li $t0 1
	li $t3 0
	move $t1 $s0
	count:
		div $t1  $t0
		mflo $t1
		addi $t3 $t3 1
		bne $t1 $zero count
	
	la $t4 	hex
	addu $t4 $t4 $t3
	sb $zero ($t4)
	move $t1 $s0
	la $t6 alpha
		
	hexa:
		addi  $t4 $t4 -1
		div $t1  $t0
		mflo $t1
		mfhi $t2
		beq $t2 10 A
		beq $t2 11 B
		beq $t2 12 C
		beq $t2 13 D
		beq $t2 14 E
		beq $t2 15 F
		ori $t5 $t2 48
		sb $t5 ($t4)
		l1: bne $t1 $zero hexa
		
		la $a0 hex
		li $v0 4
		syscall
		
		j exit
		
	A:
		lb $t3 0($t6)
		sb $t3 ($t4)
		j l1
	B:
		lb $t3 1($t6)
		sb $t3 ($t4)
		j l1
	C:
		lb $t3 2($t6)
		sb $t3 ($t4)
		j l1
	D:
		lb $t3 3($t6)
		sb $t3 ($t4)
		j l1
	E:
		lb $t3 4($t6)
		sb $t3 ($t4)
		j l1
	F:
		lb $t3 5($t6)
		sb $t3 ($t4)
		j l1
	exit:
		li $v0 10
		syscall
		
		
	
