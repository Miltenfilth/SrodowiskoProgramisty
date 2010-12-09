#!/bin/bash

#*******************************************************************************
#*  Programer:     Maciej Stankiewicz
#*  Index number:  195018
#*  Group:         5D
#*  University:    University of Gdańsk
#*  email:         miltenfilth@gmail.com
#*******************************************************************************
#	lab: 4
#	zad: 10
#	opis: Testowanie wyrażeniń regularnych
#*******************************************************************************

echo Podaj tekst do testowania:
read text
echo Podaj Wyrazenie regularne:
read regular
echo podaj tekst zastepujacy:
read text2
echo Wynik: `echo $text | sed -e "s/$regular/$text2/"`
