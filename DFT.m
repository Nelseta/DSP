#include <iostream>
#include <math.h>
#include <time.h>
#include <fstream>
#include <stdlib.h>

using namespace std;

int main()
{
	int N= pow(2,11);
	double xn, real, imag, ts = (double) 1/8000; //t = 1/f; amostra no tempo t	
	for(int m = 0; m < N; m++) 
		{
			real = 0;
			imag = 0;
	
			for (int n = 0; n < N; n++){
			xn = sin(2*M_PI*1000*n*ts) + 0.5*sin(2*M_PI*2000*n*ts+3*M_PI/4);
			}

		if(real < 0.00001 && real > -0.00001) //zerar numeros muitos pequenos
		real = 0;

		if(imag < 0.00001 && imag > -0.00001) // zerar numeros muitos pequenos
		imag = 0; 
	}
	return 0;	
}  
