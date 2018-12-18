.data
	prompt1: .asciiz "First Integer: "
	prompt2: .asciiz "Second Integer: "
	prompt3: .asciiz "Third Integer: "
	prompt4: .asciiz "Largest Integer: "
	
.text

	la $a0, prompt1
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	
	move $t1, $v0
	
	la $a0, prompt2
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	
	move $t2, $v0
	
	la $a0, prompt3
	li $v0, 4
	syscall
	
	li $v0, 5
	syscall
	
	move $t3, $v0
	
	la $a0, prompt4
	li $v0, 4
	syscall
	
	
	
	bge $t1, $t2, lbl1
	j else
	
	lbl1:
		bge $t1, $t3, lbl2
		
		move $a0, $t3
		li $v0, 1
		syscall
		
		j exit
		
		lbl2:
			move $a0, $t1
			li $v0, 1
			syscall
		
			j exit
	else:
		bge $t2, $t3, lbl3
		
		move $a0, $t3
		li $v0, 1
		syscall
		
		j exit
		
		lbl3:
			move $a0, $t2
			li $v0, 1
			syscall
		
			j exit		
	exit:
		li $v0, 10
		syscall	
