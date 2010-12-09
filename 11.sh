#!/bin/bash

#*******************************************************************************
#*  Programer:     Maciej Stankiewicz
#*  Index number:  195018
#*  Group:         5D
#*  University:    University of Gdańsk
#*  email:         miltenfilth@gmail.com
#*******************************************************************************
#	lab: 4
#	zad: 11
#	opis: warunki logiczne zagadka
#*******************************************************************************

echo ile jest 2+2?
read wynik
if [ $wynik -eq 4 2>/dev/null ]
	then echo Dobrze
	else echo zle
fi
