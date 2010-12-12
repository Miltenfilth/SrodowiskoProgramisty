#!/bin/bash

#*******************************************************************************
#*  Programer:     Maciej Stankiewicz
#*  Index number:  195018
#*  Group:         5D
#*  University:    University of Gdańsk
#*  email:         miltenfilth@gmail.com
#*******************************************************************************
#	Lab: 6
#	Zadanie: 21
#	Opis: find
#*******************************************************************************

find ~ -perm /o+w
find ~ -atime +7
find ~ -size +100k
find ~ -empty
find ~ -size +500k -atime +30
