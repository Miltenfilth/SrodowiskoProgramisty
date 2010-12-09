#!/bin/bash

#*******************************************************************************
#*  Programer:     Maciej Stankiewicz
#*  Index number:  195018
#*  Group:         5D
#*  University:    University of Gdańsk
#*  email:         miltenfilth@gmail.com
#*******************************************************************************
#	lab: 4
#	zad: 12 
#	opis: zgadywanie liczby przez podpowiedzi programu
#*******************************************************************************

#na dole opis pytania dodatkowego

liczba=`python -c "import random; print random.randrange(1,50);"`
echo "Twoim celem jest zgadniecie liczby z przedzialu 1-50"
echo "Podaj liczbe"
read liczba2
while [ $liczba -ne $liczba2 ]
do
	if [ $liczba -gt $liczba2 ]
		then echo za malo
		else echo za duzo
	fi
	echo "Podaj liczbe"	
	read liczba2
done
echo Dobrz!
# najlepiej zgadywac metodą poszukowan binarnych, wybieramy wartosc ze srodku przedzialu
# poczatek=1
# koniec =50
# srodek=(poczatek+koniec)/2
# if za malo to poczatek=srodek
# if za duzo koniec=srode
# powtarzaj dopuki nie znaleziono
# algorytm ma zlozonosc lg n
