#!/bin/sh
# Concatinates the text in sepert files
while [ "$#" -gt "0" ]
do
	cat "$1"
	shift
done