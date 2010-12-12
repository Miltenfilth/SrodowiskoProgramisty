#!/bin/bash

#*******************************************************************************
#*  Programer:     Maciej Stankiewicz
#*  Index number:  195018
#*  Group:         5D
#*  University:    University of Gdańsk
#*  email:         miltenfilth@gmail.com
#*******************************************************************************
#	Lab: 5
#	Zadanie: 14
#	Opis: markdown 1
#*******************************************************************************

echo "#Zawartosc katalogu `pwd`"
numer=0

ls -l | while read line
do

	if [ $numer != 0 ]
	then
		echo "$numer. $line"	
	fi
	((numer++))
done

