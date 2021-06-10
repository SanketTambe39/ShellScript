#!/bin/bash

isPalindrome()
{
        local s=$1
        local len=${#s}
        for (( i=0;i<len/2;i+=1 ))
        do
                if [[ ${s:i:1} != ${s:len-i-1:1} ]]
                then
                return 1 # false
                fi
        done
        return 0 # true
}

for word in "$@"
do
        isPalindrome $word
        if [[ $? -eq 0 ]]; then
                echo "String is palindrome."
        else
                echo "String is not palindrome."
        fi
done
