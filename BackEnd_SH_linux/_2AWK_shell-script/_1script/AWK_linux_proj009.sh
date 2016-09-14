#!/bin/bash

#SITE
#http://www.tutorialspoint.com/awk/awk_loops.htm

#AWK - Loops
	#For Loop
	awk 'BEGIN { for (i = 1; i <= 5; ++i) print i }'

	#While Loop
	awk 'BEGIN {
		i = 1; 
		while (i < 6) { print i; ++i } 
	}'

	#Do-While Loop
	awk 'BEGIN {
		i = 1; 
		do { print i; ++i } while (i < 6) 
	}'

	#Break Statement
	awk 'BEGIN {
	   sum = 0; 
	   for (i = 0; i < 20; ++i) { 
	      sum += i; 
	      if (sum > 50) break; 
	      else print "Sum =", sum 
	   } 
	}'

	#Continue Statement
	awk 'BEGIN {
	   for (i = 1; i <= 20; ++i) {
	      if (i % 2 == 0) print i ; 
	      else continue
	   } 
	}'

	#Exit Statement
	awk 'BEGIN {
	   	sum = 0; 
	   	for (i = 0; i < 20; ++i) {
	    	sum += i; 
	    	if (sum > 50) exit(10); 
	  		else print "Sum =", sum 
	   	} 
	}'

	#check the return status of the script
	echo $?

