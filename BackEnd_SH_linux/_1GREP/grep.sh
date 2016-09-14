#!/bin/sh

#INPUT DATA ################
count=0
search1=moonfruit
search2=moonfruit.*Product*

filepath1=files/file1.txt
filepath2=files/*.txt

#FUNCTIONS #################
paragraph() {
  echo ""
}

count(){
  let "count++"
  echo "---" $count "---"
}

#############################
#go to directory (in the iMac i5)
cd /Users/americo/myMoonfruit/script/bash/_2search

#Simple grep (globally search a regular expression and print)
paragraph
count
less $filepath1 | grep $search1

#Viewing grep output in color
paragraph
count
less $filepath1 | grep --color $search1

#Viewing line numbers of successful matches
paragraph
count
less $filepath1 | grep --color -n $search1

#Performing case-insensitive grep searches
paragraph
count
less $filepath1 | grep --color -n -i $search1

#Searching multiple files using a wildcard
paragraph
count
grep --color -n -i $search1 $filepath2

#Recursively searching subdirectories
paragraph
count
grep --color -i -n -r $search1 *

#Using regular expressions to perform more powerful searches
paragraph
count
grep --color -i -n $search2 $filepath2

#TODO continue: 'Technical Description'
#http://www.computerhope.com/unix/ugrep.htm
