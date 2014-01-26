#include <stdio.h>
#include <math.h>

double pareto(float x,  float alpha, float beta);

int main()
{
  float x, alpha, beta;
  
  printf( "Input the distribution parameters in the order (x, alpha, beta): " );
  scanf( "%f", &x );
  scanf( "%f", &alpha );
  scanf( "%f", &beta );
  
  printf( "The density is %f\n", pareto( x, alpha, beta ) );
  getchar(); 
}

double pareto(float x,  float alpha, float beta)
{
	return (beta * pow(alpha, beta))/(pow(x, (beta+1)));
}