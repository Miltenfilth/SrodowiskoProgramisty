#!/bin/bash

#*******************************************************************************
#*  Programer:     Maciej Stankiewicz
#*  Index number:  195018
#*  Group:         5D
#*  University:    University of Gdańsk
#*  email:         miltenfilth@gmail.com
#*******************************************************************************
#	lab: 4
#	zad: 9
#	opis: Pokazuje największy i najmniejszy katalog w /etc/
#*******************************************************************************


cd /etc
du --max-depth=1 2>/dev/null | sort -n | tail -2 | head -1
du --max-depth=1 2>/dev/null | sort -n | head -1


