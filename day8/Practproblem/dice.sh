#!/bin/bash

declare -A result

result['one']=0
result['two']=0
result['three']=0
result['four']=0
result['five']=0
result['six']=0

flag=0

while [ $flag -eq 0 ]
do
	roll=$((RANDOM%6+1))
#	roll=1
#	echo here are you 
	case  $roll in
		1)
#			echo you are here
			result['one']=$(( ${result['one']} + 1 ))
			if [ ${result['one']} -eq 10 ]
			then
				flag=1
			fi
		;;
	        2)
			result['two']=$(( ${result['two']} + 1 ))
			if [ ${result['two']} -eq 10 ]
                        then
                                flag=1
                        fi
		;;
	        3)
        	        result['three']=$(( ${result['three']} + 1 ))
                        if [ ${result['three']} -eq 10 ]
                        then
                                flag=1
                        fi
	        ;;
	        4)
        	        result['four']=$(( ${result['four']} + 1 ))
                        if [ ${result['four']} -eq 10 ]
                        then
                                flag=1
                        fi
        	;;
        	5)
	              result['five']=$(( ${result['five']} + 1 ))
                        if [ ${result['five']} -eq 10 ]
                        then
                                flag=1
                        fi
		;;
	        6)
	                result['six']=$(( ${result['six']} + 1 ))
                        if [ ${result['six']} -eq 10 ]
                        then
                                flag=1
                        fi
		;;
		*)
			echo " Something is weird happen"
		;;
	esac
done
echo " this is the array  :: "${result[@]}
max=0

for i in ${!result[@]}
do
	if [[ ${result[$i]} -gt $max ]]
	then
		max=${result[$i]}
		maxkey=$i
	fi
done

min=$max

for i in ${!result[@]}
do
	if [[ ${result[$i]} -lt $min ]]
        then
                min=${result[$i]}
                minkey=$i
        fi

done

echo "maximum times we got "$maxkey "i.e" $max "times"
echo "minmum times we got "$minkey "i.e" $min "times"













