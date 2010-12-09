#!/bin/bash

#*******************************************************************************
#*  Programer:     Maciej Stankiewicz
#*  Index number:  195018
#*  Group:         5D
#*  University:    University of Gdańsk
#*  email:         miltenfilth@gmail.com
#*******************************************************************************
#	Lab: 5
#	Zadanie: 17
#	Opis: Wyswietla rodzaje operacji kilentow
#*******************************************************************************

./genlogs.sh 9 | cut -d ':' -f 6 | cut -d '(' -f 1 | sort | uniq
