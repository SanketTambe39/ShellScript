#!/bin/bash -x

is_Part_Time=1
is_Full_Time=2
total_Salry=0
emp_Rate_Per_Hr=20
Num_Working_Days=20
max_Working_Hr=100

totalEmpHr=0
totalWorkingDays=0

while [[ $totalEmpHr -lt $max_Working_Hr && $totalWorkingDays -lt $Num_Working_Days ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))

	if [ $is_Full_Time -eq $empCheck ]
	then
		empHrs=8
	elif [ $is_Part_Time -eq $empCheck ]
	then
		empHrs=4
	else
		empHrs=0
	fi

	totalEmpHr=$(($totalEmpHr+$empHrs))

done
echo " Employee salary for a month is "$(($totalEmpHr*$emp_Rate_Per_Hr))
