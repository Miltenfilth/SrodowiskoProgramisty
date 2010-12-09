#!/bin/bash

#*******************************************************************************
#*  Programer:     Maciej Stankiewicz
#*  Index number:  195018
#*  Group:         5D
#*  University:    University of Gdańsk
#*  email:         miltenfilth@gmail.com
#*******************************************************************************
#	Lab: 5
#	Zadanie: 18
#	Opis: wyswietla ilosc operacji dla danej sesji
#	Parametr: ilosc sesji
#*******************************************************************************

./genlogs.sh $1 | cut -d ':' -f 5 | sort | cut -d ']' -f 1 | uniq -c | sed -e 's/\s*\([0-9]*\)\s*\([0-9]*\)/\2 \1/'
