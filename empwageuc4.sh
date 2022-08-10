#!/bin/bash -x

parttime=1
fulltime=2
emprateperhour=20
randomcheck=$((RANDOM%2))
case $randomcheck in
      $fulltime)
	emphours=16
	;;
	$parttime)
	emphours=8
	;;
	*)
	emphours=0
	;;
esac

dailywage=$(($emprateperhour*$emphours))
