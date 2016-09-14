#!/bin/bash

#SITE
#http://www.tutorialspoint.com/awk/awk_basic_examples.htm

#CREATE FILE
#marks.txt

#CONTEXT OF FILE
#1)  Amit    Physics  80
#2)  Rahul   Maths    90
#3)  Shyam   Biology  87
#4)  Kedar   English  85
#5)  Hari    History  89

#print only certain columns from the input field
awk '{print $3 "\t" $4}' marks.txt

#Printing Columns by Pattern ('/a/')
awk '/a/ {print $3 "\t" $4}' marks.txt

#Counting and Printing Matched Pattern
awk '/a/{++cnt} END {print "Count = ", cnt}' marks.txt

#Printing Lines with More than 18 Characters
awk 'length($0) > 18' marks.txt