#!/bin/bash

#*******************************************************************************
#*  Programer:     Maciej Stankiewicz
#*  Index number:  195018
#*  Group:         5D
#*  University:    University of Gdańsk
#*  email:         miltenfilth@gmail.com
#*******************************************************************************
#	Lab: 6
#	Zadanie: 15 
#	Opis: markdown 2
#*******************************************************************************

echo "#Zawartosc katalogu `pwd`"
numer=0

ls -l | while read line
do

	if [ $numer != 0 ]
	then
		if	[ ${line:0:1} = 'd' ]  
			then	echo "$numer. [dir] $line"
			else
			echo "$numer. $line"	
		fi
	fi
	((numer++))
done

