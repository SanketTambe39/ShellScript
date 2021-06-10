#!/bin/bash

num1=$(($((RANDOM%90))+10))
num2=$(($((RANDOM%90))+10))
num3=$(($((RANDOM%90))+10))
num4=$(($((RANDOM%90))+10))
num5=$(($((RANDOM%90))+10))

Addition=$(($num1+$num2+$num3+$num4+$num5))
Average=$(($Addition/5))

echo "Addition of 5 Random 2 Digit is ::"$Addition
echo "Avarage Of 5 Random 2 Digit is :: "$Average
