#!/bin/bash

read -p "Enter x ::" x
read -p "Enter y  ::" y

if [ $x -ge $y ]
then
	echo "$x is equal or greater than $y "
else
	echo "$x equal of less than $y "
fi
