#!/bin/bash

#SITE
#http://www.tutorialspoint.com/awk/awk_user_defined_functions.htm
#http://www.tutorialspoint.com/awk/awk_output_redirection.htm
#http://www.tutorialspoint.com/awk/awk_pretty_printing.htm

#AWK - User Defined Functions
	#Example
		# Returns minimum number
		#function find_min(num1, num2){
		#   if (num1 < num2)
		#   return num1
		#   return num2
		#}
		# Returns maximum number
		#function find_max(num1, num2){
		#   if (num1 > num2)
		#   return num1
		#   return num2
		#}
		# Main function
		#function main(num1, num2){
		   # Find minimum number
		   #result = find_min(10, 20)
		   #print "Minimum =", result
		  
		   # Find maximum number
		   #result = find_max(10, 20)
		   #print "Maximum =", result
		#}
		# Script execution starts here
		#BEGIN {
		   #main(10, 20)
		#}

	#AWK - Output Redirection
		#Redirection Operator
		echo "Old data" > /tmp/message.txt
		cat /tmp/message.txt

		#Example
		awk 'BEGIN { print "Hello, World !!!" > "/tmp/message.txt" }'
		cat /tmp/message.txt

		#Append Operator
		echo "Old data" >> /tmp/message.txt 
		cat /tmp/message.txt

		#Pipe: Let us use tr command to convert lowercase letters to uppercase.
		awk 'BEGIN { print "hello, world !!!" | "tr [a-z] [A-Z]" }'

		#Two way communication
		#BEGIN {
		   #cmd = "tr [a-z] [A-Z]"
		   #print "hello, world !!!" |& cmd
		   #close(cmd, "to")
		   
		   #cmd |& getline out
		   #print out;
		   #close(cmd);
		#}

	#AWK - Pretty Printing
		#Escape Sequences
			#New Line
			awk 'BEGIN { printf "Hello\nWorld\n" }'

			#Horizontal Tab
			awk 'BEGIN { printf "Sr No\tName\tSub\tMarks\n" }'

			#Vertical Tab
			awk 'BEGIN { printf "Sr No\vName\vSub\vMarks\n" }'

			#Backspace
			awk 'BEGIN { printf "Field 1\bField 2\bField 3\bField 4\n" }'

			#Carriage Return
			awk 'BEGIN { printf "Field 1\rField 2\rField 3\rField 4\n" }'

			#Form Feed
			awk 'BEGIN { printf "Sr No\fName\fSub\fMarks\n" }'

		#Format Specifier
			#%c: It prints a single character
			awk 'BEGIN { printf "ASCII value 65 = character %c\n", 65 }'

			#%d and %i: It prints only the integer part of a decimal number.
			awk 'BEGIN { printf "Percentags = %E\n", 80.66 }'

			#%e and %E: It prints a floating point number of the form [-]d.dddddde[+-]dd.
			awk 'BEGIN { printf "Percentags = %E\n", 80.66 }'
			awk 'BEGIN { printf "Percentags = %e\n", 80.66 }'

			#%f: It prints a floating point number of the form [-]ddd.dddddd.
			awk 'BEGIN { printf "Percentags = %f\n", 80.66 }'

			#%g and %G
			awk 'BEGIN { printf "Percentags = %g\n", 80.66 }'
			awk 'BEGIN { printf "Percentags = %G\n", 80.66 }'

			#%o
			awk 'BEGIN { printf "Octal representation of decimal number 10 = %o\n", 10}'

			#%u
			awk 'BEGIN { printf "Unsigned 10 = %u\n", 10 }'

			#%s
			awk 'BEGIN { printf "Name = %s\n", "Sherlock Holmes" }'

			#%x and %X
			awk 'BEGIN { 
			   printf "Hexadecimal representation of decimal number 15 = %x\n", 15
			}'

			awk 'BEGIN { 
			   printf "Hexadecimal representation of decimal number 15 = %X\n", 15
			}'
			
			#%%
			awk 'BEGIN { printf "Percentags = %d%%\n", 80.66 }'

		#Optional Parameters with %
			#Width
			awk 'BEGIN { 
			   num1 = 10; num2 = 20; printf "Num1 = %10d\nNum2 = %10d\n", num1, num2 
			}'

			#Leading Zeros
			awk 'BEGIN { 
			   num1 = -10; num2 = 20; printf "Num1 = %05d\nNum2 = %05d\n", num1, num2 
			}'

			#Left Justification
			awk 'BEGIN { num = 10; printf "Num = %-5d\n", num }' | cat -vte

			#Prefix Sign
			awk 'BEGIN { 
			   num1 = -10; num2 = 20; printf "Num1 = %+d\nNum2 = %+d\n", num1, num2 
			}'

			#Hash
			awk 'BEGIN { 
			   printf "Octal representation = %#o\nHexadecimal representaion = %#X\n", 10, 10
			}'
















