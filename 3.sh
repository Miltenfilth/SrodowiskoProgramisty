#!/bin/bash

#*******************************************************************************
#*  Programer:     Maciej Stankiewicz
#*  Index number:  195018
#*  Group:         5D
#*  University:    University of Gdańsk
#*  email:         miltenfilth@gmail.com
#*******************************************************************************
#	Lab: 2
#	Zadanie: 3
#	Opis: Informacje o systemie
#*******************************************************************************

system=`uname -a | cut -d " " -f 1,3` 
memfree=`cat /proc/meminfo | grep MemFree: | sed -e 's/MemFree:/Memory:/'`
memtotal=`cat /proc/meminfo | grep MemTotal: | sed -e 's/MemTotal://'`
disc=`df -h 2>/dev/null | grep home | cut -d " " -f 13`
proc=`uname -a | cut -d " " -f 13 | sed -e 's/_/ /g'`
echo Procesor: $proc
echo 
echo $memfree / $memtotal
echo
echo Free disc space on home: $disc
echo
echo System: $system

