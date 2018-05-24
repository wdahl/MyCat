#!/bin/sh
# Prints out help message if no arguemnts are given
if [ "$#" = "0" ]
	then
	echo "Usage: mycat3.sh [-u|-l|-t] FILE ..."
	echo
	echo "Description: concatenates FILE(s) to standard output."
fi

# Concatinates the text in seperate files 
if [ "$1" = "-u" ]; then # makes output upercase
	while [ "$#" -gt "1" ]
	do
		cat "$2" | awk '{print toupper($0)}'
		shift
	done

elif [ "$1" = "-l" ]; then # makes out put lowercase
	while [ "$#" -gt "1" ]
	do
		cat "$2" | awk '{print tolower($0)}'
		shift
	done

elif [ "$1" = "-t" ]; then # makes output intially uppercase
	while [ "$#" -gt "1" ]
	do
		cat "$2" | sed 's/.*/\L&/; s/[a-z]*/\u&/g'
		shift
	done

else # does not change out put when option is not given
	while [ "$#" -gt "0" ]
	do
		cat "$1"
		shift
	done
fi