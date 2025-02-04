#!/bin/bash

#Goal: take two numbers as input and print sum, difference, muliplication, division


validity(){
	num1=$1
	num2=$2

	if [[ (($num1 =~ ^[+-]?[0-9]+([.][0-9]+)?$)) && (($num2 =~ ^[+-]?[0-9]+([.][0-9]+)?$)) ]] 
		then
		return 1
	else
		return 0
	fi
}

sum(){
	num1=$1
	num2=$2
	echo "$num1 + $num2" | bc -l
}

difference(){
	num1=$1
	num2=$2
	echo "$num1 - $num2" | bc -l
}

multiplication(){
	num1=$1
	num2=$2
	echo "$num1 * $num2" | bc -l
}

division(){
	num1=$1
	num2=$2
	echo "$num1 / $num2" | bc -l
}


#taking 2 number as input from user
read -p "Enter first number: " num1
read -p "Enter second number: " num2

#checking for numbers
validity $num1 $num2

if [[ $? -eq 1 ]]
	then
	sum=$(sum $num1 $num2)
	echo "Sum: $sum"
	diff=$(difference $num1 $num2)
	echo "Difference: $diff"
	multi=$(multiplication $num1 $num2)
	echo "Multiplication: $multi"
	
	if [[ ($num2 == 0) ]]
		then
		echo "Error: Divide by 0"
		exit 1
	else
	div=$(division $num1 $num2)
	echo "Division: $div"
	fi
else
	echo "Not a valid input (Both the entered values should be numbers only!!"
	exit 1
fi


