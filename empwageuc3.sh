#!/bin/bash -x

partTime=1
fullTime=2
emprateperhour=20
randomcheck=$((RANDOM%2))


if [ $fullTime -eq $randomcheck ]
then
	emphours=16
elif [ $partTime -eq $randomcheck ]
then
	emphours=8
else
	emphours=0
fi

dailywage ( $dailywage per hour is 20)
