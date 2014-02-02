alpha <- c(1,2,2)
beta <- c(2,6,2)
colors <- c("red", "blue", "darkgreen")

plot(c(0.3,10), c(0.03,3.45), type="n", xlab="x value",
     ylab="Density", main="Pareto w/ different parameters")

for(i in 1:length(alpha)){
  z <- seq(0,alpha[i]-.00001,length=1000)
  x <- seq(alpha[i]+.00001, 10, length=1000)
  abline(v = alpha[i], untf = FALSE, lty=2)
  lines(z, dpareto(z, alpha[i], beta[i]), lwd=2, col=colors[i])
  lines(x, dpareto(x, alpha[i], beta[i]), lwd=2, col=colors[i])
} 

legend("topright", inset=.05, title="Distribution Parameters",
       c(expression(paste(alpha, "=", "1, ", beta, "=", 2)),
         expression(paste(alpha, "=", "2, ", beta, "=", 6)),
         expression(paste(alpha, "=", "2, ", beta, "=", 2))),
       lwd=2, lty=c(1, 1, 1), col=colors)