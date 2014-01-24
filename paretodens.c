double pareto(float x,  float a, float b);

int main()
{
  float x;
  float a;
  float b;
  
  printf( "Input the distribution parameters:" );
  scanf( "%f", &x );
  scanf( "%f", &a );
  scanf( "%f", &b );
  printf( "The density is %f\n", pareto( x, a, b ) );
  getchar(); 
}

double pareto(float x,  float a, float b);
{
	return (b*(a^b))/(x^(b+1))
}