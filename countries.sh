#!/bin/bash

#Goal: prints countries from index 3 to 7 (inclusive) from a given list
file=countries.txt
i=3
j=7
#while[[ $i -le $j ]]
#	do
#	awk 'NR==${i}{ print}' $file
#	done

awk 'NR==3{ print; exit }' $file
awk 'NR==4{ print; exit }' $file
awk 'NR==5{ print; exit }' $file
awk 'NR==6{ print; exit }' $file
awk 'NR==7{ print; exit }' $file

