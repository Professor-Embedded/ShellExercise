#!/bin/bash

#Goal: Take n input numbers and find the avg of them

read -p "Enter total count of numbers: " total
avg=0
sum=0
loop=total
while [[ $loop -ne 0 ]]
	do
		read -p "Enter number: " num
		sum="$(echo "$sum + $num" | bc -l)"
		loop=$((loop - 1))
	done
avg="$(echo "$sum/$total" | bc -l )"
echo "$avg"
