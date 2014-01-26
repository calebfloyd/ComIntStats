x <- seq(1, 10, length=100)

colors <- c("red", "blue", "darkgreen")

plot(x, dpareto(x), type="l", lty=2, xlab="x value",
     ylab="Density", main="Pareto w/ different parameters")


lines(x, dpareto(x, alpha = 1, beta = 1), lwd=2, col=colors[1])
lines(x, dpareto(x, alpha = 2, beta = 6), lwd=2, col=colors[2])
lines(x, dpareto(x, alpha = 3, beta = 2), lwd=2, col=colors[3])

legend("topright", inset=.05, title="Distribution Parameters",
       c(expression(paste(alpha, "=", "1, ", beta, "=", 1)),
         expression(paste(alpha, "=", "2, ", beta, "=", 6)),
         expression(paste(alpha, "=", "3, ", beta, "=", 2))),
       lwd=2, lty=c(1, 1, 1), col=colors)