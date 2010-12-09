#!/bin/bash

#*******************************************************************************
#*  Programer:     Maciej Stankiewicz
#*  Index number:  195018
#*  Group:         5D
#*  University:    University of Gdańsk
#*  email:         miltenfilth@gmail.com
#*******************************************************************************
#	Lab: 5
#	Zadanie: 19
#	Opis: Wyswietla klienta z najwieksza iloscia sesji
#	Parametr: ilosc sesji
#*******************************************************************************

./genlogs.sh $1 | cut -d ':' -f 5 | sort -n | cut -d ']' -f 1 | uniq -c | sort -n | tail -1 | sed -e 's/\s*\([0-9]*\)\s*\([0-9]*\)/\2 \1/' 
