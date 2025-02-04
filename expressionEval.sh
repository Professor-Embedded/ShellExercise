#!/bin/bash

#Goal: Taking mathametical expression as input and evaluates it

<<old
read -p "Enter a valid mathematical expression: " exp

if [[ $exp =~ ^[0-9\+\-\*\/\(\)\. ]+$ ]]
	then 
	ans=$(echo "$exp" | bc -l )
	printf %.3f $ans
	echo
else
	echo "Not a valid exp"
fi
old





read -p "Enter a valid mathematical expression: " exp

# Validate the expression using a properly formatted regex
if [[ $exp =~ ^[0-9\+\-\*/\(\)\.[:space:]]+$ ]]; then
    ans=$(echo "$exp" | bc -l)

    # Check if bc produced a valid output
    if [[ -z "$ans" || "$ans" == "syntax error" ]]; then
        echo "Invalid mathematical expression."
    else
        printf "%.3f\n" "$ans"
    fi
else
    echo "Not a valid expression."
fi

