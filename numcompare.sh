#!/bin/bash

#Goal: Taking two user inputs and comparision of those two numbers

#user input
read -p "Enter value of x: " x
read -p "Enter value of y: " y

#check for the valid input type (num)
if [[ (($x =~ ^[+-]?[0-9]+([.][0-9]+)?$)) && (($y =~ ^[+-]?[0-9]+([.][0-9]+)?$)) ]]
	then
	if [[ "$(echo "$x < $y" | bc -l )" -eq 1  ]]
		then
		echo "$x is less than $y"
		
	elif [[ "$(echo "$x > $y" | bc -l)" -eq 1 ]]
		then
		echo "$x is greater than $y"
		
	else
		echo "$x is equal to $y"
		fi

else
echo "Not a valid input type (Both the values should be numbers only!!)"
exit 1
fi
