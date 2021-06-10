#!/bin/bash -x

#result="$(myfunc $((RANDOM%2)) )"

function myfunc(){

	echo $1
}

result="$(myfunc $((RANDOM%2)) )"

if [ $result -eq 1 ]
then
	echo "done"
else
	echo "fail"
fi
