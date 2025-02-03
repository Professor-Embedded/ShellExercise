#!/bin/bash

read -p "File path:" file
file=$(cat $file)
for line in $file
	do
		echo $line | cut -c3
	done
