#!/bin/bash

#*******************************************************************************
#*  Programer:     Maciej Stankiewicz
#*  Index number:  195018
#*  Group:         5D
#*  University:    University of Gdańsk
#*  email:         miltenfilth@gmail.com
#*******************************************************************************
#	lab: 4
#	zad: 8
#	Pokazuje najczesciej logujacych się urzytkowników
#*******************************************************************************

last -400 | grep pts | cut -d ' ' -f 1 | sort | uniq -c | sort -r | head -3 

