#!/bin/bash

#*******************************************************************************
#*  Programer:     Maciej Stankiewicz
#*  Index number:  195018
#*  Group:         5D
#*  University:    University of Gdańsk
#*  email:         miltenfilth@gmail.com
#*******************************************************************************
#	Lab: 3
#	Zadanie: 5
#	Opis: Ile razy danego dnia logowal sie użytkownik
#*******************************************************************************


echo -n "username:"
read name
echo -n "data:"
read data




bla=`last $name | grep "$data" |wc -l`

echo "User $name logged $bla times on $data"
