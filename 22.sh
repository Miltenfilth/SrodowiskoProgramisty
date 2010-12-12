#!/bin/bash

#*******************************************************************************
#*  Programer:     Maciej Stankiewicz
#*  Index number:  195018
#*  Group:         5D
#*  University:    University of Gdańsk
#*  email:         miltenfilth@gmail.com
#*******************************************************************************
#	Lab: 6
#	Zadanie: 22
#	Opis: wyswietla nazwy i pierwsze linie plikow w bierzacym katalogu
#*******************************************************************************

find . -maxdepth 1 -type f -exec echo {} \; -exec head -1 {} \;
