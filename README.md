Rozwiazania zadań z przedmiotu Środowisko Programisty
Maciej Stankiewicz gr 5D
index: 195018
Uniwersytet Gdański

Do dzialania zadania 16 (markdown 3) potrzebne sa 3 pliki:
16.sh
16m.sh
16x.sh

aby stworzyc pliki html nalerzy uruchomic skrypt 16.sh 

u mnie dziala :)

http://sigma.ug.edu.pl/~mstankiewicz

Zadanie 27 liczy dwumian netwona przy pomocy mocno zoptymalizowanego algorytmu iteracyjnego dzialajacego na pamieci O(n). Dodatkowo wykorzystuje symetrię i nie liczy zadnych zbędnych wartosci przez co nie wystepuje zadna redundancja.

Zadanie 28 liczy dwumian netwona dla duzych liczb (i parę innych rzeczy) w języku java przy użyciu BigInteger. DuzeLiczby - wersja konsolowa, Okno - wersja z nakladka graficzna

PRedkosci dzialania:
(dla 100000000 wywolan 10 po 5)

26c1  7,286s
26c2 96,650s
27   13,070s

Wersja c1 dzialala najszybciej mimo ze jest to asymptotycznie najwolniejsze rozwiazanie. Wynika to z faktu ze dla malych liczb (które miszcza sie w rejestrze procesora)  operacja mnozenia jest wykonywana jednostkowym. Jednak w przypadku ogólnym dla duzych liczb mnozenie ma zlozonosc kwadratową (n log n 2^Olog*n w przypadku najszybszego znanego algorytmu) wiec obliczanie silni jest operacja kosztowna.
Wersja c2 jest dosc powolna ze wzgledu na koszt wywolan rekurencyjnych a do tego bardzo pomieciozerna, dodatkowo wystepuje nadmiarowosc poniewaz niektore skladniki sa liczone wielokrotnie.

Wersja 27 jako wersja iteracyjna jest pozbawiona wad zrowno wersji rekurencyjnej jak i silni. Dziala na pamieci theta(n), nie wystepuje w niej nadmiarowosc i przy duzym n byla by prawdopodobnie zdecydowanie szybsza od algorytmów z wersjii 26.


