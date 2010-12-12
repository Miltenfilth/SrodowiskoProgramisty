#!/bin/bash

#*******************************************************************************
#*  Programer:     Maciej Stankiewicz
#*  Index number:  195018
#*  Group:         5D
#*  University:    University of Gdańsk
#*  email:         miltenfilth@gmail.com
#*******************************************************************************
#	Lab: 6
#	Zadanie: 23 
#	Opis: wyswietla pliki basha
#*******************************************************************************

for f in ./*
do
	
	bla=`file $f | grep "Bourne-Again shell script" | wc -l`
	if [ $bla == 1 ]
	then
		echo "$f"
		cat $f
	fi	
done
