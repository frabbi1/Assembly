.data
	prompt1: .asciiz "Give First Number:\n"
	prompt2: .asciiz "Give Second Number (not Zero):\n"
	high: .asciiz "High part: "
	low: .asciiz "low part: "
	quot: .asciiz "Quotient: "
	Rem: .asciiz "Remainder: "
	endl: .asciiz "\n"
.text
.globl main
main:

multiplication:
	la $a0, prompt1
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	la $a0, prompt2
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	
	move $t1, $v0
	
	la $a0, high
	li $v0, 4
	syscall
	
	mult $t0, $t1	# multiply
	mfhi $a0	# high part print
	li $v0, 1
	syscall
	
	la $a0, endl
	li $v0, 4
	syscall
	
	la $a0, low
	li $v0, 4
	syscall
	
	mflo $a0	# low part print
	li $v0, 1
	syscall
	
	la $a0, endl
	li $v0, 4
	syscall
Division:
	div $t0, $t1
	
	la $a0, quot
	li $v0, 4
	syscall
	
	mflo $a0
	li $v0, 1
	syscall
	
	la $a0, endl
	li $v0, 4
	syscall
	
	la $a0, Rem
	li $v0, 4
	syscall
	
	mfhi $a0
	li $v0, 1
	syscall
		
exit:
	
	li $v0, 10
	syscall	
			