#!/bin/bash

#SITE
#http://www.tutorialspoint.com/awk/awk_built_in_variables.htm

#$0: the entire input record
awk '{print $0}' marks.txt

#$n: the nth field in the current record where the fields are separated by FS
awk '{print $3 "\t" $4}' marks.txt


