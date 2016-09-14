#!/bin/bash

#SITE
#http://www.tutorialspoint.com/awk/awk_arrays.htm

#AWK - Arrays
	#Creating Array
	awk 'BEGIN {
	   fruits["mango"] = "yellow";
	   fruits["orange"] = "orange"
	   print fruits["orange"] "\n" fruits["mango"]
	}'

	#Deleting Array Elements
	awk 'BEGIN {
	   fruits["mango"] = "yellow";
	   fruits["orange"] = "orange";
	   delete fruits["orange"];
	   print fruits["orange"]
	}'

	#Multi-Dimensional arrays
	awk 'BEGIN {
	   array["0,0"] = 100;
	   array["0,1"] = 200;
	   array["0,2"] = 300;
	   array["1,0"] = 400;
	   array["1,1"] = 500;
	   array["1,2"] = 600;

	   # print array elements
	   print "array[0,0] = " array["0,0"];
	   print "array[0,1] = " array["0,1"];
	   print "array[0,2] = " array["0,2"];
	   print "array[1,0] = " array["1,0"];
	   print "array[1,1] = " array["1,1"];
	   print "array[1,2] = " array["1,2"];
	}'

