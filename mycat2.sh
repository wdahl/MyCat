#!/bin/sh
# Prints out help message if no arguemnts are given
if [ "$#" = "0" ]
	then
	echo "Usage: mycat2.sh FILE ..."
	echo
	echo "Description: concatenates FILE(s) to standard output."
fi

# Concatinates the text in sepert files
while [ "$#" -gt "0" ]
do
	cat "$1"
	shift
done