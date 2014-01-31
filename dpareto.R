dpareto <- function(x, alpha, beta = 1, log = FALSE)
{
  
  alpha <- ifelse(alpha < x, 
                  ifelse(alpha > 0, alpha, NaN), 0)
    if(any(is.na(alpha)))warning("NaNs produced")

  beta <- ifelse(beta > 0, beta, NaN)
    if(any(is.na(beta)))warning("NaNs produced")
  
  if(log == TRUE){
    return(log((beta * (alpha^beta))/(x^(beta + 1))))
  }

  (beta * (alpha^beta))/(x^(beta + 1))
  
}