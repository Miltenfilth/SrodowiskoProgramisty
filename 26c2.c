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

int c2(n,k) {
	if (k == 0 && n >= 0) return 1;
	if (k == 1 && n >= 0) return n;
	if (k > n / 2) return c2(n,n-k);
	return c2(n-1,k-1) + c2(n-1,k);
}

int main(void) {
	int n,k;
//	scanf("%d %d", &n, &k);
	n = 10;
	k = 5;
	int i;
	for (i = 0; i < 100000000; i++) {
		int nk = c2(n,k);
	}
	//	printf("%d", nk);
	return 0;
}
