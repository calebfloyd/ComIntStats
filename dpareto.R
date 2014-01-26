dpareto <- function(x, alpha = 1, beta = 1)
{
  result = (beta * (alpha^beta))/(x^(beta + 1))
  return(result)
}