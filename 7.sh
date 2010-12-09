#!/bin/bash

#*******************************************************************************
#*  Programer:     Maciej Stankiewicz
#*  Index number:  195018
#*  Group:         5D
#*  University:    University of Gdańsk
#*  email:         miltenfilth@gmail.com
#*******************************************************************************
#  	lab: 4
#	zad: 7
#	Wyjasnic różnice miedzy wywolaniami sed
#*******************************************************************************


echo "Ala ma kota. Kot ma Ale." | sed -e 's/./!/' #Zamienia raz jeden dowolny znak na '!'
echo "Ala ma kota. Kot ma Ale." | sed -e 's/\./!/' #zamienia raz jeden znak kropki '.' na '!'
echo "Ala ma kota. Kot ma Ale." | sed -e 's/./!/g' #Zamienia wszystkie dowolne pojedyncze znaki na '!'
echo "Ala ma kota. Kot ma Ale." | sed -e 's/\./!/g' #Zamienia Wszystkie znaki kropki '.' na '!'

