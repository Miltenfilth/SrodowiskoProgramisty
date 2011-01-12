/*
 ============================================================================
 Name        : dwumian.c
 Author      : milten
 Version     : 1.0 a
 Copyright   : Your copyright notice
 Description : Dwumian Netwona z optymalizacj¹ w C99
 ============================================================================
 */
#include<stdio.h>

int main() {
	int n, nmax, k, kOld, min, max, bla, i, wynik;
	scanf("%d %d", &nmax, &k);
	kOld = k; //pierwotne k do wywietlania wyniku
	if (k > nmax / 2)
		k = nmax - k; //symetrycznosc dwumianu
	if (k == 0) { //przypadek trywialny
		wynik = 1;
		printf("%d po %d = %d", nmax, kOld, wynik);
		return 0;
	}
	int tab[2][nmax / 2 + 1]; //deklarowanie tablicy (program dzia³¹ na pamiêci (Theta)n )
	for (i = 0; i < k; i++) //wpisywanie '1' do wszystkich komórek tablicy
		tab[0][i] = 1;
	for (i = 0; i < k; i++)
		tab[1][i] = 1;
	max = 1;
	bla = 0;
	for (n = 2; n <= nmax; n++) {
		if (k - (nmax - n) > 1) //ucinanie niepotrzebnych wyrazów trójk¹ta po lewej stronie
			min = k - (nmax - n);
		else
			min = 1;
		if (n % 2 == 0) {//n parzyste
			tab[1][0] = 1;
			for (i = min; i < max; i++) {//-1
				tab[1][i] = tab[0][i] + tab[0][i - 1];
			}
			if (bla == 0)
				tab[1][max] = tab[0][max - 1] * 2; //[k-2] <<1
			else
				tab[1][max] = tab[0][max] + tab[0][max - 1];
		} else { // n nieparzyste
			tab[0][0] = 1;
			for (i = min; i <= max; i++) {
				tab[0][i] = tab[1][i] + tab[1][i - 1];
			}
			if (max < k)
				max++;
			else
				bla = 1;
		}
	}
	if (n % 2 == 0)
		wynik = tab[0][k]; //sprawdzanie gdzie jest wynik
	else
		wynik = tab[1][k];
	printf("%d po %d = %d", nmax, kOld, wynik);
	return 0;
}
