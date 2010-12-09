#!/bin/bash

#*******************************************************************************
#*  Programer:     Maciej Stankiewicz
#*  Index number:  195018
#*  Group:         5D
#*  University:    University of Gdańsk
#*  email:         miltenfilth@gmail.com
#*******************************************************************************
#	Lab: 2
#	Zadanie: 2
#	Opis: Pokazuje z jakiej ostatnio sali labolatorium logowal sie urzytkownik
#*******************************************************************************

last $1 | grep lab | cut -c 23-30 | cut -d "-" -f 1 | cut -d "p" -f 2 | head -1

