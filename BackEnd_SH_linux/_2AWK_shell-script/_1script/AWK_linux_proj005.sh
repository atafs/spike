#!/bin/bash

#SITE
#http://www.tutorialspoint.com/awk/awk_operators.htm

#Operators & Description
	#AWK - Arithmetic Operators
		#plus (+)
		awk 'BEGIN { a = 50; b = 20; print "(a + b) = ", (a + b) }'

		#minus (-)
		awk 'BEGIN { a = 50; b = 20; print "(a - b) = ", (a - b) }'

		#asterisk (*)
		awk 'BEGIN { a = 50; b = 20; print "(a * b) = ", (a * b) }'

		#slash (/)
		awk 'BEGIN { a = 50; b = 20; print "(a / b) = ", (a / b) }'

		#percent (%)
		awk 'BEGIN { a = 50; b = 20; print "(a % b) = ", (a % b) }'


	#AWK - Increment and Decrement Operators
		#Pre-Increment
		awk 'BEGIN { a = 10; b = ++a; printf "a = %d, b = %d\n", a, b }'

		#Pre-Decrement
		awk 'BEGIN { a = 10; b = --a; printf "a = %d, b = %d\n", a, b }'

		#Post-Increment
		awk 'BEGIN { a = 10; b = a++; printf "a = %d, b = %d\n", a, b }'

		#Post-Decrement
		awk 'BEGIN { a = 10; b = a--; printf "a = %d, b = %d\n", a, b }'

	#AWK - Assignment Operators
		#Simple Assignment
		awk 'BEGIN { name = "Jerry"; print "My name is", name }'

		#Shorthand Addition
		awk 'BEGIN { cnt = 10; cnt += 10; print "Counter =", cnt }'

		#Shorthand Subtraction
		awk 'BEGIN { cnt = 100; cnt -= 10; print "Counter =", cnt }'

		#Shorthand Multiplication
		awk 'BEGIN { cnt = 10; cnt *= 10; print "Counter =", cnt }'

		#Shorthand Division
		awk 'BEGIN { cnt = 100; cnt /= 5; print "Counter =", cnt }'

		#Shorthand Modulo
		awk 'BEGIN { cnt = 100; cnt %= 8; print "Counter =", cnt }'

		#Shorthand Exponential
		awk 'BEGIN { cnt = 2; cnt ^= 4; print "Counter =", cnt }'

		#Shorthand Exponential
		awk 'BEGIN { cnt = 2; cnt **= 4; print "Counter =", cnt }'

	#AWK - Relational Operators
		#Equal to
		awk 'BEGIN { a = 10; b = 10; if (a == b) print "a == b" }'

		#Not Equal to
		awk 'BEGIN { a = 10; b = 20; if (a != b) print "a != b" }'

		#Less Than
		awk 'BEGIN { a = 10; b = 20; if (a < b) print "a  < b" }'

		#Less Than or Equal to
		awk 'BEGIN { a = 10; b = 10; if (a <= b) print "a <= b" }'

		#Greater Than
		awk 'BEGIN { a = 10; b = 20; if (b > a ) print "b > a" }'


	#AWK - Logical Operators
		#Logical AND
		awk 'BEGIN {
		   num = 5; if (num >= 0 && num <= 7) printf "%d is in octal format\n", num 
		}'

		#Logical OR
		awk 'BEGIN {
		   ch = "\n"; if (ch == " " || ch == "\t" || ch == "\n") 
		   print "Current character is whitespace." 
		}'

		#Logical NOT
		awk 'BEGIN { name = ""; if (! length(name)) print "name is empty string." }'

	#AWK - Ternary Operator
		#Example
		awk 'BEGIN { a = 10; b = 20; (a > b) ? max = a : max = b; print "Max =", max}'

	#AWK - Unary Operators
		#Unary Plus
		awk 'BEGIN { a = -10; a = +a; print "a =", a }'

		#Unary Minus
		awk 'BEGIN { a = -10; a = -a; print "a =", a }'

	#AWK - Exponential Operators
		#Exponential Format 1
		awk 'BEGIN { a = 10; a = a ^ 2; print "a =", a }'

		#Exponential Format 2
		awk 'BEGIN { a = -10; a = -a; print "a =", a }'

	#AWK - String Concatenation Operator
		#Example
		awk 'BEGIN { str1 = "Hello, "; str2 = "World"; str3 = str1 str2; print str3 }'

	#AWK - Array Membership Operator
		#Example
		awk 'BEGIN { 
		   arr[0] = 1; arr[1] = 2; arr[2] = 3; for (i in arr) printf "arr[%d] = %d\n", i, arr[i]
		}'

	#AWK - Regular Expression Operators
		#Match: It is represented as ~
		awk '$0 ~ 9' marks.txt

		#Not Match
		awk '$0 !~ 9' marks.txt
		

