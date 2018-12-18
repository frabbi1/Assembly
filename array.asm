.data
	ar: .space 40
	endl: .asciiz "\n"
.text
main:
	la $s0 ar		#s0 = address of ar
	#initialize array
	addiu $t0 $0 1  	#i=t0 =1
	loop1:
		beq $t0 11 endloop1	#if i==11 break loop
		sw $t0 ($s0)		#ar[i-1]=i
		addiu $s0 $s0 4		#move ar to next pointer
		addiu $t0 $t0 1		#i++
		j loop1
		
	endloop1:
	la $s0 ar
	addiu $t0 $0 1
	li $t2 0
	
	printingLoop:
		beq $t0 11 endPrintingLoop
		lw $t1 ($s0)
		addu $t2 $t2 $t1
		jal printInt
		jal endlPrint
		addiu $s0 $s0 4
		addiu $t0 $t0 1
		j printingLoop
		
	endPrintingLoop:
	move $t1 $t2
	jal printInt		
	j exit

printInt:
		move $a0 $t1
		li $v0 1
		syscall
		jr $ra
			
endlPrint:
	la $a0 endl
	li $v0 4
	syscall
	jr $ra
exit:
	li $v0 10
	syscall
