#!/bin/bash -x

is_Part_Time=1
is_Full_Time=2
total_Salry=0
emp_Rate_Per_Hr=20
Num_Working_Days=20
max_Working_Hr=100

totalEmpHr=0
totalWorkingDays=0

function getWorkingHrs(){
	case $1 in
		$is_Full_Time)
			empHrs=8
			;;
                $is_Part_Time)
                        empHrs=4
			;;
		*)
			empHrs=0
			;;
	esac
}
function getEmpWage(){

	echo $(($1*$emp_Rate_Per_Hr))

}


while [[ $totalEmpHr -lt $max_Working_Hr &&
$totalWorkingDays -lt $Num_Working_Days ]]
do
	((totalWorkingDays++))
	getWorkingHrs $((RANDOM%3))
	totalEmpHr=$(($totalEmpHr+$empHrs))
	dailyWage[$totalWorkingDays]=$(($empHrs*$emp_Rate_Per_Hr))

done

echo "from function "$(getEmpWage $totalEmpHr)

#echo " Employee salary for a month is "$(($totalEmpHr*$emp_Rate_Per_Hr))
#echo ${dailyWage[@]}
