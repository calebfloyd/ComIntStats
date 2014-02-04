dyn.load("paretodens.so") 
paretodens <- function(x, alpha, beta){
  .C("paretodens", as.double(x), as.double(alpha), 
      as.double(beta), as.double(0.0))[[4]]
}
