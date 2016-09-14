#!/bin/bash

#SITE
#http://www.tutorialspoint.com/awk/awk_arrays.htm

#AWK - Control Flow
	#If statement
	awk 'BEGIN {num = 10; if (num % 2 == 0) printf "%d is even number.\n", num }'

	#If Else Statement
	awk 'BEGIN {
	   num = 11; 
	   if (num % 2 == 0) printf "%d is even number.\n", num; 
	   else printf "%d is odd number.\n", num 
	}'

	#If-Else-If Ladder
	awk 'BEGIN {
	   a = 30;
	   if (a==10) print "a = 10";
	   else if (a == 20) print "a = 20";
	   else if (a == 30) print "a = 30";
	}'

