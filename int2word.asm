.data
	u1: .asciiz "One "
	u2: .asciiz "Two "
	u3: .asciiz "Three "
	u4: .asciiz "Four "
	u5: .asciiz "Five "
	u6: .asciiz "Six "
	u7: .asciiz "Seven "
	u8: .asciiz "Eight "
	u9: .asciiz "Nine "
	u10: .asciiz "Ten "
	u11: .asciiz "Eleven "
	u12: .asciiz "Twelve "
	u13: .asciiz "Thirteen "
	u14: .asciiz "Fourteen "
	u15: .asciiz "Fifteen "
	u16: .asciiz "Sixteen "
	u17: .asciiz "Seventeen "
	u18: .asciiz "Eighteen "
	u19: .asciiz "Nineteen "
	u0: .asciiz ""
	u20: .asciiz "Twenty "
	t0: .asciiz ""
	t1: .asciiz ""
	t2: .asciiz "Twenty "
	t3: .asciiz "Thirty "
	t4: .asciiz "Forty "
	t5: .asciiz "Fifty "
	t6: .asciiz "Sixty "
	t7: .asciiz "Seventy "
	t8: .asciiz "Eighty "
	t9: .asciiz "Ninety "
	ah: .asciiz "Hundred "
	at: .asciiz "Thousand "
	al: .asciiz "Lac "
	ac: .asciiz "Crore "
	z: .asciiz "Zero"
.text
	li $v0 5		#read integer
	syscall
	move $s0 $v0

	beqz $s0 zero
rec:
	blt $s0 20 l1
	blt $s0 100 l3
	blt $s0 1000 l4

	j exit

l1:
	li $t5 0
	beq $s0 0 print0
	beq $s0 1 print1
	beq $s0 2 print2
	beq $s0 3 print3
	beq $s0 4 print4
	beq $s0 5 print5
	beq $s0 6 print6
	beq $s0 7 print7
	beq $s0 8 print8
	beq $s0 9 print9
	beq $s0 10 print10
	beq $s0 11 print11
	beq $s0 12 print12
	beq $s0 13 print13
	beq $s0 14 print14
	beq $s0 15 print15
	beq $s0 16 print16
	beq $s0 17 print17
	beq $s0 18 print18
	beq $s0 19 print19
l3:
	li $t5 0
	li $t1 10
	div $s0 $t1
	mflo $s0
	mfhi $t2
	beq $s0 2 printt2
	beq $s0 3 printt3
	beq $s0 4 printt4
	beq $s0 5 printt5
	beq $s0 6 printt6
	beq $s0 7 printt7
	beq $s0 8 printt8
	beq $s0 9 printt9
	
	j exit	
	
l4:
	li $t5 1
	li $t1 100
	div $s0 $t1
	mflo $s0
	mfhi $t2
	
	beq $s0 0 print0
	beq $s0 1 print1
	beq $s0 2 print2
	beq $s0 3 print3
	beq $s0 4 print4
	beq $s0 5 print5
	beq $s0 6 print6
	beq $s0 7 print7
	beq $s0 8 print8
	beq $s0 9 print9
	
	
print0:
	la $a0 u0
	li $v0 4
	syscall
	
	beq $t5 1 ph
	beq $t5 2 pth
	j exit	
print1:
	la $a0 u1
	li $v0 4
	syscall
	
	beq $t5 1 ph
	beq $t5 2 pth
	beq $t5 3 pl
	beq $t5 4 pc
	j exit
print2:
	la $a0 u2
	li $v0 4
	syscall
	
	beq $t5 1 ph
	beq $t5 2 pth
	beq $t5 3 pl
	beq $t5 4 pc
	j exit
print3:
	la $a0 u3
	li $v0 4
	syscall
	
	beq $t5 1 ph
	beq $t5 2 pth
	beq $t5 3 pl
	beq $t5 4 pc
	j exit
print4:

	la $a0 u4
	li $v0 4
	syscall
	
	beq $t5 1 ph
	beq $t5 2 pth
	beq $t5 3 pl
	beq $t5 4 pc
	j exit
print5:
	la $a0 u5
	li $v0 4
	syscall
	
	beq $t5 1 ph
	beq $t5 2 pth
	beq $t5 3 pl
	beq $t5 4 pc
	j exit
print6:
	la $a0 u6
	li $v0 4
	syscall
	j exit
print7:
	la $a0 u7
	li $v0 4
	syscall
	
	beq $t5 1 ph
	beq $t5 2 pth
	beq $t5 3 pl
	beq $t5 4 pc
	j exit
print8:
	la $a0 u8
	li $v0 4
	syscall
	
	beq $t5 1 ph
	beq $t5 2 pth
	beq $t5 3 pl
	beq $t5 4 pc
	j exit
print9:
	la $a0 u9
	li $v0 4
	syscall
	
	beq $t5 1 ph
	beq $t5 2 pth
	beq $t5 3 pl
	beq $t5 4 pc
	j exit
print10:
	la $a0 u10
	li $v0 4
	syscall
	j exit
print11:
	la $a0 u11
	li $v0 4
	syscall
	j exit
print12:
	la $a0 u12
	li $v0 4
	syscall
	j exit
print13:
	la $a0 u13
	li $v0 4
	syscall
	j exit
print14:
	la $a0 u14
	li $v0 4
	syscall
	j exit
print15:
	la $a0 u15
	li $v0 4
	syscall
	j exit
print16:
	la $a0 u16
	li $v0 4
	syscall
	j exit
print17:
	la $a0 u17
	li $v0 4
	syscall
	j exit
print18:
	la $a0 u18
	li $v0 4
	syscall
	j exit
print19:
	la $a0 u19
	li $v0 4
	syscall
	j exit
print20:
	la $a0 t2
	li $v0 4
	syscall
	j exit

	
			
printt2:
	move $s0 $t2
	la $a0 t2
	li $v0 4
	syscall
	j rec
printt3:
	move $s0 $t2
	la $a0 t3
	li $v0 4
	syscall
	j rec
printt4:
	move $s0 $t2
	la $a0 t4
	li $v0 4
	syscall
	j rec
printt5:
	move $s0 $t2
	la $a0 t5
	li $v0 4
	syscall
	j rec
printt6:
	move $s0 $t2
	la $a0 t6
	li $v0 4
	syscall
	j rec
printt7:
	move $s0 $t2
	la $a0 t7
	li $v0 4
	syscall
	j rec
printt8:
	move $s0 $t2
	la $a0 t8
	li $v0 4
	syscall
	j rec
printt9:
	move $s0 $t2
	la $a0 t9
	li $v0 4
	syscall
	j rec
ph: 
	la $a0 ah
	li $v0 4
	syscall
	move $s0 $t2
	j rec
pth:
	la $a0 at
	li $v0 4
	syscall
	move $s0 $t2
	j rec

pl:
pc:
zero:  	
	la $a0 z
	li $v0 4
	syscall
	j exit	
exit: 
	li $v0 10
	syscall
