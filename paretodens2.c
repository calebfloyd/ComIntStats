#include <R.h>

void paretodens2(double *x, double *alpha, double *beta, double *result) {
	if (*alpha < *x && *alpha > 0 && *beta > 0) {
		*result = (*beta * pow(*alpha, *beta))/(pow(*x, (*beta + 1)));
	}
	else if(*alpha < 0 || *beta < 0) {
		*result = NAN;
	}
	else{
		*result = 0.0;
	}  
}
