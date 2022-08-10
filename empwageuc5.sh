#!/bin/bash -x
parttime=1
fulltime=2
emprateperhour=20
randomcheck=$((RANDOM%3))
totalsalary=0
numworkingdays=20

for (( day=1; day<=$numworkingdays; day++ ))
do
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

dailywage=$(($emphours*$emprateperhour))
dailywage=$(($monthlywage+$dailywage))

done
