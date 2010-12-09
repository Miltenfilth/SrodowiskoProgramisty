#!/bin/bash

#*******************************************************************************
#*  Programer:     Maciej Stankiewicz
#*  Index number:  195018
#*  Group:         5D
#*  University:    University of Gdańsk
#*  email:         miltenfilth@gmail.com
#*******************************************************************************
#	Lab: 2
#	Zadanie: 1
#	Opis: Pokazuje czy urzytkownik jest zalogowany
#*******************************************************************************

inf=`who | grep ^$1"\>" | wc -l`
if [ $inf != 0 ]
then
	echo "Urzytkownik $1 jest obecny w systemie"
else
	echo "Urzytkownika $1 nie ma w systemie"
fi
