#!/bin/bash

declare -A faceValue

read -p " Enter number of times dice gonna roll " times

isRoll=0
face_one=1
face_two=2
face_three=3
face_four=4
face_five=5
face_six=6

while [[ isRoll -lt times ]]
do
	roll=$(( RANDOM%6+1 ))
	case $roll in
		$face_one)
			face="one"
			;;
		$face_two)
                        face="two"
			;;
		$face_three)
                        face="three"
			;;
		$face_four)
                        face="four"
			;;
		$face_four)
                        face="four"
			;;
		$face_five)
                        face="five"

			;;
		$face_six)
                        face="six"
			;;
		*)
			face="you are in Unknown phase "
			;;
	esac
	faceValue[$face]=$roll
	echo $face
	isRoll=$(( $isRoll + 1 ))
done
echo "${faceValue[@]}"
