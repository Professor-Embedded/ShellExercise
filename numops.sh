#!/bin/bash

#Goal: take two numbers as input and print sum, difference, muliplication, division

#taking 2 number as input from user
read -p "Enter first number: " num1
read -p "Enter second number: " num2

#checking for numbers
if [[ (($num1 =~ ^[+-]?[0-9]+([.][0-9]+)?$)) && (($num2 =~ ^[+-]?[0-9]+([.][0-9]+)?$)) ]]
	then
	echo "Sum: $(echo "$num1 + $num2" | bc -l)"
	echo "Difference: $(echo "$num1 - $num2" | bc -l)"
	echo "Multiplication: $(echo "$num1 * $num2" | bc -l)"
	echo "Division: $(echo "$num1 / $num2" | bc -l)"
	exit 0
	fi
echo "Not a valid input (Both the entered values should be numbers only!!"
exit 1


