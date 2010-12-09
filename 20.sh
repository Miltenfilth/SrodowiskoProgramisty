#!/bin/bash

#*******************************************************************************
#*  Programer:     Maciej Stankiewicz
#*  Index number:  195018
#*  Group:         5D
#*  University:    University of Gdańsk
#*  email:         miltenfilth@gmail.com
#*******************************************************************************
#	Lab: 5
#	Zadanie: 20
#	Opis: Podaje najwyzsza sume przelewu
#	Parametr: ilosc sesji
#*******************************************************************************

./genlogs.sh $1 | grep "Make transfer" | awk '{print $14}' | sort -n | tail -1
