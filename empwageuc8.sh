#!/bin/bash -x
parttime=1
fulltime=2
emprateperhour=20
maxhoursmonth=10
numworkingdays=20
totalemphours=0
totalworkingdays=0

function workinghour() {

 case $randomcheck in
        $fulltime)
        emphours=16
        ;;
        $parttime)
        parttime=8
        ;;
        *)
        emphours=0
        ;;

esac
echo $emphours
}
while [[ $totalemphours -lt $maxhoursmonth && $totalworkingdays -lt $numworkingdays ]]

do

        ((totalworkingdays++))
        randomcheck=$((RANDOM%3))
         emphours=$( workinghour $randomcheck )
        totalemphours=$(($totalemphours+$emphours))
	dailywage[$totalworkingdays]=$(($emphours*$emprateperhour))
done

monthlywage=$(($totalemphours*$emprateperhour))

echo ${dailywage[@]}

