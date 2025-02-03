#!/bin/bash

#Goal: Taking mathametical expression as input and evaluates it


read -p "Enter a valid mathematical expression: " exp

	ans=$(echo "$exp" | bc -l )
	printf %.3f $ans
	echo


