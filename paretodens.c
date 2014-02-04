#include <stdio.h>
#include <math.h>

double paretodens(double x, double alpha, double beta) {
	if (alpha < x && alpha > 0 && beta > 0) {
		printf ("%f\n", (beta * pow(alpha, beta)) / (pow(x, (beta + 1))));
		return beta;
	}
	else if(alpha < 0 || beta < 0) {
		return NAN;
		printf ("Fix parameter values.\n");
	}
	else {
		return 0.00;
	}
}

int main(){
    float x, alpha, beta;  
    scanf ("%f %f %f", &x, &alpha, &beta);
	printf ("%f\n", paretodens(x, alpha, beta));
}