#!/bin/bash

# Goal: Printing odd numbers between 1 to 100

num1=1
num2=100
#read -p "num1:" num1
#read -p "num2:" num2

while [[ $num1 -le $num2 ]]
do
	temp=$(($num1 % 2))
	if [[ $temp -ne 0 ]]
		then
			echo $num1
		fi
	num1=$(($num1+1))
done
		


	
			
	
