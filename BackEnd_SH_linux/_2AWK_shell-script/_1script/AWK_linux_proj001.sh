#!/bin/bash

#SITE
#http://www.tutorialspoint.com/awk/awk_environment.htm

#?where is it installed in the machine?
which awk

#CREATE FILE
#marks.txt

#CONTEXT OF FILE
#1)  Amit    Physics  80
#2)  Rahul   Maths    90
#3)  Shyam   Biology  87
#4)  Kedar   English  85
#5)  Hari    History  89

#PRINT FILE
awk 'BEGIN{printf "Sr No\tName\tSub\tMarks\n"} {print}' marks.txt

#This option assigns a value to a variable
awk -v name=Jerry 'BEGIN{printf "Name = %s\n", name}'

#VERSION
awk --version

