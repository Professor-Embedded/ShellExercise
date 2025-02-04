#!/bin/bash

# Goal: Printing odd numbers between 1 to 100

<<oldversion

num1=1
num2=100

while [[ $num1 -le $num2 ]]
do
	temp=$(($num1 % 2))
	if [[ $temp -ne 0 ]]
		then
			echo $num1
		fi
	num1=$(($num1+1))
done

oldversion

for (( i=1; i<=100; i++ ))
	do
		if [ $(($i%2)) == 1 ]
			then
			echo $i
			fi
	done



	
			
	
