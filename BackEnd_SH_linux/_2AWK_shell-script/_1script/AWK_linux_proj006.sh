#!/bin/bash

#SITE
#http://www.tutorialspoint.com/awk/awk_regular_expressions.htm

#AWK - Regular Expressions
	#Dot: It matches any single character except the end of line character
	echo -e "cat\nbat\nfun\nfin\nfan" | awk '/f.n/'

	#Start of line: It matches the start of line
	echo -e "This\nThat\nThere\nTheir\nthese" | awk '/^The/'

	#End of line: It matches the end of line
	echo -e "knife\nknow\nfun\nfin\nfan\nnine" | awk '/n$/'

	#Match character set: It is used to match only one out of several characters
	echo -e "Call\nTall\nBall" | awk '/[CT]all/'

	#Exclusive set: In exclusive set, the carat negates the set of characters in the square brackets
	echo -e "Call\nTall\nBall" | awk '/[^CT]all/'

	#Alteration: 
	echo -e "Call\nTall\nBall\nSmall\nShall" | awk '/Call|Ball/'

	#Zero or One Occurrence: We have made u as an optional character by using ?
	echo -e "Colour\nColor" | awk '/Colou?r/'

	#Zero or More Occurrence
	echo -e "ca\ncat\ncatt" | awk '/cat*/'

	#One or More Occurrence: matches one or more occurrences of the 2
	echo -e "111\n22\n123\n234\n456\n222"  | awk '/2+/'

	#Grouping: Parentheses () are used for grouping and the character | is used for alternatives
	echo -e "Apple Juice\nApple Pie\nApple Tart\nApple Cake" | awk '/Apple (Juice|Cake)/'
