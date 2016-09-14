#!/bin/bash

#SITE
#http://www.tutorialspoint.com/awk/awk_built_in_functions.htm

#AWK - Built-in Functions
	#AWK - Arithmetic Functions
		#atan2(y, x) arco-tangente
		awk 'BEGIN {
		   PI = 3.14159265
		   x = -10
		   y = 10
		   result = atan2 (y,x) * 180 / PI;
		   
		   printf "The arc tangent for (x=%f, y=%f) is %f degrees\n", x, y, result
		}'

		#cos(expr) coseno
		awk 'BEGIN {
		   PI = 3.14159265
		   param = 60
		   result = cos(param * PI / 180.0);

		   printf "The cosine of %f degrees is %f.\n", param, result
		}'

		#exp(expr)
		awk 'BEGIN {
		   param = 5
		   result = exp(param);
		   
		   printf "The exponential value of %f is %f.\n", param, result
		}'

		#int(expr)
		awk 'BEGIN {
		   param = 5.12345
		   result = int(param)
		   
		   print "Truncated value =", result
		}'

		#log(expr)
		awk 'BEGIN {
		   param = 5.5
		   result = log (param)
		   
		   printf "log(%f) = %f\n", param, result
		}'

		#rand
		awk 'BEGIN {
		   print "Random num1 =" , rand()
		   print "Random num2 =" , rand()
		   print "Random num3 =" , rand()
		}'

		#sin(expr)
		awk 'BEGIN {
		   PI = 3.14159265
		   param = 30.0
		   result = sin(param * PI /180)

		   printf "The sine of %f degrees is %f.\n", param, result
		}'

		#sqrt(expr)
		awk 'BEGIN {
		   param = 1024.0
		   result = sqrt(param)
		   
		   printf "sqrt(%f) = %f\n", param, result
		}'

		#srand([expr])
		awk 'BEGIN {
		   param = 10
		   
		   printf "srand() = %d\n", srand()
		   printf "srand(%d) = %d\n", param, srand(param)
		}'

	#AWK - String Functions
		#asort(arr [, d [, how] ])
		awk 'BEGIN {
		   arr[0] = "Three"
		   arr[1] = "One"
		   arr[2] = "Two"
		   print "Array elements before sorting:"
		   
		   for (i in arr) {
		      print arr[i]
		   }
		   asort(arr)
		   print "Array elements after sorting:"
		   
		   for (i in arr) {
		      print arr[i]
		   }
		}'

		#asorti(arr [, d [, how] ]): same as that of asort(), except that the array indexes are used for sorting
		awk 'BEGIN {
		   arr["Two"] = 1
		   arr["One"] = 2
		   arr["Three"] = 3
		   asorti(arr)
		   print "Array indices after sorting:"
		   
		   for (i in arr) {
		      print arr[i]
		   }
		}'

		#gsub(regex, sub, string): gsub stands for global substitution
		awk 'BEGIN {
		   str = "Hello, World"
		   print "String before replacement = " str
		   
		   gsub("World", "Jerry", str)
		   print "String after replacement = " str
		}'

		#index(str, sub): It checks whether sub is a substring of str or not
		awk 'BEGIN {
		   str = "One Two Three"
		   subs = "Two"
		   ret = index(str, subs)
		   
		   printf "Substring \"%s\" found at %d location.\n", subs, ret
		}'

		#length(str)
		awk 'BEGIN {
		   str = "Hello, World !!!"
		   print "Length = ", length(str)
		}'

		#match(str, regex)
		awk 'BEGIN {
		   str = "One Two Three"
		   subs = "Two"
		   ret = match(str, subs)
		  
		   printf "Substring \"%s\" found at %d location.\n", subs, ret
		}'

		#split(str, arr, regex)
		awk 'BEGIN {
		   str = "One,Two,Three,Four"
		   split(str, arr, ",")
		   print "Array contains following values"
		   
		   for (i in arr) {
		      print arr[i]
		   }
		}'

		#sprintf(format, expr-list)
		awk 'BEGIN {
		   param = 1024.0
		   result = sqrt(param)
		   
		   printf "sqrt(%f) = %f\n", param, result
		}'

		#strtonum(str)
		awk 'BEGIN {
		   print "Decimal num = " strtonum("123")
		   print "Octal num = " strtonum("0123")
		   print "Hexadecimal num = " strtonum("0x123")
		}'

		#sub(regex, sub, string)
		awk 'BEGIN {
		   str = "Hello, World"
		   print "String before replacement = " str
		   
		   sub("World", "Jerry", str)
		   print "String after replacement = " str
		}'

		#substr(str, start, l)
		awk 'BEGIN {
		   str = "Hello, World !!!"
		   subs = substr(str, 1, 5)

		   print "Substring = " subs
		}'

		#tolower(str)
		awk 'BEGIN {
		   str = "HELLO, WORLD !!!"
		   print "Lowercase string = " tolower(str)
		}'

		#toupper(str)
		awk 'BEGIN {
		   str = "hello, world !!!"
		   print "Uppercase string = " toupper(str)
		}'

	#AWK - Time Functions
		#systime
		awk 'BEGIN {
		   print "Number of seconds since the Epoch = " systime()
		}'

		#mktime(datespec)
		awk 'BEGIN {
		   print "Number of seconds since the Epoch = " mktime("2014 12 14 30 20 10")
		}'

		#strftime([format [, timestamp[, utc-flag]]])
		awk 'BEGIN {
		   print strftime("Time = %m/%d/%Y %H:%M:%S", systime())
		}'

	#AWK - Bit Manipulation Functions
		#and
		awk 'BEGIN {
		   num1 = 10
		   num2 = 6
		   printf "(%d AND %d) = %d\n", num1, num2, and(num1, num2)
		}'

		#compl
		awk 'BEGIN {
		   num1 = 10
		   printf "compl(%d) = %d\n", num1, compl(num1)
		}'

		#lshift
		awk 'BEGIN {
		   num1 = 10
		   printf "lshift(%d) by 1 = %d\n", num1, lshift(num1, 1)
		}'

		#rshift
		awk 'BEGIN {
		   num1 = 10
		   printf "rshift(%d) by 1 = %d\n", num1, rshift(num1, 1)
		}'

		#or
		awk 'BEGIN {
		   num1 = 10
		   num2 = 6
		   printf "(%d OR %d) = %d\n", num1, num2, or(num1, num2)
		}'

		#xor
		awk 'BEGIN {
		   num1 = 10
		   num2 = 6
		   printf "(%d XOR %d) = %d\n", num1, num2, xor(num1, num2)
		}'

	#AWK - Miscellaneous Functions
		#close(expr)
		awk 'BEGIN {
		   cmd = "tr [a-z] [A-Z]"
		   print "hello, world !!!" |& cmd
		   
		   close(cmd, "to")
		   cmd |& getline out
		   print out;
		   
		   close(cmd);
		}'

		#delete
		awk 'BEGIN {
		   arr[0] = "One"
		   arr[1] = "Two"
		   arr[2] = "Three"
		   arr[3] = "Four"
		   print "Array elements before delete operation:"
		   
		   for (i in arr) {
		      print arr[i]
		   }
		   delete arr[0]
		   delete arr[1]
		   print "Array elements after delete operation:"
		   
		   for (i in arr) {
		      print arr[i]
		   }
		}'

		#exit
		awk 'BEGIN {
		   print "Hello, World !!!"
		   exit 10
		   print "AWK never executes this statement."
		}'

		#getline
		awk '{getline; print $0}' marks.txt

		#next
		awk '{if ($0 ~/Shyam/) next; print $0}' marks.txt

		#system
		awk 'BEGIN { ret = system("date"); print "Return value = " ret }'

		#return
		#function addition(num1, num2) {
		#   result = num1 + num2
		#   return result
		#}
		#BEGIN {
		#   res = addition(10, 20)
		#   print "10 + 20 = " res
		#}










