#!/bin/sh
# Searches a directory for charecterists specific to the provided option
if [ "$1" = "1" ] && [ -d "$2" ]; then
	locate --regex "$2(.*-{1,})"	

elif [ "$1" = "1" ]; then
	echo "not a vaild directory" >&2
fi

if [ "$1" = "2" ] && [ -f "$2" ]; then
	cat "$2" | grep -h " \.\| ,"

elif [ "$1" = "2" ]; then
	echo "not a vaild file" >&2
fi
