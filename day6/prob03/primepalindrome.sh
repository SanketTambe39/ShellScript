#!/bin/bash

read -p "Enter a number" num

flag=1

function palindrome()
{
        local s=$1
        local len=${#s}
        for (( i=0;i<len/2;i+=1 ))
        do
                if [[ ${s:i:1} != ${s:len-i-1:1} ]]
                then
                        return 1
                fi
        done
        return 0
}

function isprime()
{

	for((i=2; i<=num/2; i++))
	do
		if [ $((num%i)) -eq 0 ]
		then
			flag=1
			echo $num is not palindrome
			exit
		fi
	done
	flag=0
	echo $num is prime
}

isprime $num
palindrome $num
if [[ $? -eq 0 ]]
then
	echo "String is palindrome."
else
	echo "String is not palindrome."
fi
