.data

prompt: .asciiz "Give an integer :\n"
string: .space 5

.text

la $a0 prompt		#load address of prompt
li $v0 4		#print prompt
syscall

li $v0 5		#read integer
syscall

move $s0 $v0		#s0 = scanned integer

move $t0 $s0
li $t2 0
li $t1 10			#t1=10
count: 				#count digit
	div $t0 $t1
	mflo $t0		#t0 = quotient
	
	addiu $t2 $t2 1		#increament t1
	beqz $t0 skip		#if(t0 == 0) end count
	
	j count
skip:

la $a1 string		#load first address of string in a1
addu $a1 $a1 $t2	#move address as much as digit no. 
sb $zero 0($a1)		#store null terminator
move $t0 $s0		#t0=integer

convert:
	div $t0 $t1		#div by t1=10
	mfhi $t2		#t2=rem
	mflo $t0		#t0 = quotient
	ori $t2 48		#convert to char
	addiu $a1 $a1 -1	#move backward 1 byte of the string address
	sb $t2 0($a1)		#store char to the pointed addrs
	bnez $t0 convert	
	j exit
	
exit:
	la $a0 string		#print string
	li $v0 4
	syscall
	
li $v0 10
	


	






