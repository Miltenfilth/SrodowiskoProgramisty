/*
 ============================================================================
 Name        : DevEnv26c1.c
 Author      : milten
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>

int silnia(liczba) {
	int wynik = 1;
	int i;
	for (i = 1; i <= liczba; i++) {
		wynik *= i;
	}
	return wynik;
}

int main(void) {
	int n,k;
	//scanf("%d %d", &n, &k);
	n = 10;
	k = 5;
	int i = 0;
	for (i = 0; i < 100000000; i++) {
		int nk = silnia(n)/(silnia(k)*silnia(n-k));
	}
	//printf("%d", nk);
	return 0;
}
