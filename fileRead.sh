#!/bin/bash

#Goal: reading only third character of each line

read -p "File path:" file

<<oldcode
#Used < instead of cat 
file=$(<"$file")
for line in $file
	do
		echo $line | cut -c3
	done
oldcode


#Using while loop

while read -r line
	do
		echo $line | cut -c3
	done < "$file"


