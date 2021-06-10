#!/bin/bash

read -p "Enter number for cheking its factorials ::" num

result=1

for ((i=1;i<=num;i++))
do
	result=$((result*i))
done

echo "Factorial of $num is "$result
