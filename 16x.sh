#!/bin/bash

#*******************************************************************************
#*  Programer:     Maciej Stankiewicz
#*  Index number:  195018
#*  Group:         5D
#*  University:    University of Gdańsk
#*  email:         miltenfilth@gmail.com
#*******************************************************************************
#	Lab: 5
#	Zadanie: 16
#	Opis: markdown 3
#*******************************************************************************

cd $1
echo "#Zawartosc katalogu `pwd`"
numer=0

ls -l | while read line
do

	if [ $numer != 0 ]
	then
		if	[ ${line:0:1} = 'd' ]  
			then	
				bla=`echo $line | cut -d ':' -f 2 | cut -d ' ' -f 2`
				echo "$numer. [dir] [$line]($bla)"
			else
			echo "$numer. $line"	
		fi
	fi
	((numer++))
done

