# Start .data segment (data!)
	.data
Title: .asciiz "Add two numbers! \n" 
msg1: .asciiz "Input number 1: "
msg2: .asciiz "Input number 2: "
msg3: .asciiz "Sum: "
newline: .asciiz "\n"

	.text
	.globl main
main:
# Start .text segment (program code)
	
	# Print string Title
	li $v0, 4 # mã 4 dùng để in Title
	la $a0, Title # load the address of Title
	syscall
	# Print string msg1
	li $v0,4 # mã 4 dùng để in msg1
	la $a0, msg1 # load the address of msg1
	syscall
	# Get input number 1 and save
	li $v0,5 # mã 5 dùng để đọc (int) input
	syscall
	move $t0,$v0 # syscall results returned in $v0
	# Print string msg2
	li $v0,4 # mã 4 dùng để in input msg2
	la $a0, msg2 # load the address of msg2
	syscall
	# Get input number 2 and save
	li $v0,5 # mã 5 dùng để đọc (int) input
	syscall
	move $t1,$v0 # syscall results returned in $v0
	# number 1 + number 2
	add $t0, $t0, $t1 # t0 == number 1, t1 == number 2
	# Print string msg3
	li $v0, 4 # mã 4 dùng để in msg3
	la $a0, msg3
	syscall
	# Print sum
	li $v0,1 # mã 1 dùng để in syscall code
	move $a0, $t0 # int to print must be loaded into $a0
	syscall
	# Print \n
	li $v0,4 # mã 4 dùng để in input newline
	la $a0, newline
	syscall
	li $v0,10 # 10 tell us exit program
	syscall