dpareto <- function(x, alpha, beta = 1)
{
  result = (beta * (alpha^beta))/(x^(beta + 1))
  return(result)
}