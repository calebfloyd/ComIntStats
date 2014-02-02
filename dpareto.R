dpareto <- function(x, alpha, beta, log = FALSE) {
  # Computes the density of the Pareto distribution.
  #
  # Args:
  #   x: Vector of quanties.
  #   alpha: Vector of scale parameters.
  #   beta: Vector of shape parameters.  
  #   log: If TRUE, returns the natrual log of the density. Default is FALSE.
  #
  # Returns:
  #   The desenity of the Pareto distribution given appropriate vectors of parameters.  
  alpha <- ifelse (alpha < x, ifelse (alpha > 0, alpha, NaN), 0)  
  if (any(is.na(alpha))) {
    warning("NaNs produced")
  }
  beta <- ifelse (beta > 0, beta, NaN)
  if (any(is.na(beta))) {
    warning("NaNs produced")
  }
  if (log == TRUE) {
    return(log((beta * (alpha^beta)) / (x^(beta + 1))))
  }
  (beta * (alpha^beta)) / (x^(beta + 1))
}
