#!/bin/bash -x
present=1
randomcheck=$((RANDOM%2))

if [ $present -eq $randomcheck ]
then
   emprateperhour=20
   emphour=8
   dailywage=$((emprateperhour*emphour))
else
   dailywage=0
fi
