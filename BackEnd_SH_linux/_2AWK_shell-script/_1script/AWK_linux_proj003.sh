#!/bin/bash

#SITE
#http://www.tutorialspoint.com/awk/awk_built_in_variables.htm

#ARGV: It is an array that stores the command-line arguments
awk 'BEGIN { 
   for (i = 0; i < ARGC - 1; ++i) { 
      printf "ARGV[%d] = %s\n", i, ARGV[i] 
   } 
}' one two three four

#ENVIRON: environment variables
awk 'BEGIN { print ENVIRON["USER"] }'

#FILENAME: current file name
awk 'END {print FILENAME}' marks.txt

#FS: the (input) field separator and its default value is space
awk 'BEGIN {print "FS = " FS}' | cat -vte

#NF: the number of fields in the current record.
echo -e "One Two\nOne Two Three\nOne Two Three Four" | awk 'NF > 2'

#NR: the number of the current record
echo -e "One Two\nOne Two Three\nOne Two Three Four" | awk 'NR < 3'

#RLENGTH: the length of the string matched by match function
awk 'BEGIN { if (match("One Two Three", "re")) { print RLENGTH } }'


