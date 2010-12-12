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

./16m.sh `pwd`
find . -type d -exec ./16m.sh {} \;
