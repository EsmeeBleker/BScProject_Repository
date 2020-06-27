x <- graph$points[,1]
dR <- graph$points[,2]
dCj <- graph$points[,3]
dCa <- graph$points[,4]
dIa <- graph$points[,5]

x2 <- graph2$points[,1]
dR2 <- graph2$points[,2]
dCj2 <- graph2$points[,3]
dCa2 <- graph2$points[,4]
dIa2 <- graph2$points[,5]

mat <- matrix(c(1,2,3,4), nrow = 4, ncol = 1)
layout(mat)

par(mar = c(0, 8, 1, 1))
plot(x,dR, type = "l", xlim = c(0,0.3), ylim = c(0,80),col = 'darkgoldenrod2', xlab = NA, ylab = NA, lwd = 2, xaxt = "n", yaxt = "n")
#lines(x2, dR2, col = 'darkgoldenrod2', lwd = 2)
points(0.00221, 37.35684, pch = 19, cex = 1.5)
axis(2, labels = TRUE, cex.axis = 1.5, las = 2)
mtext("Resource", side = 2, cex = 1, line = 3.5)

par(mar = c(0, 8, 0, 1))
plot(x, dCj, type = "l", xlim = c(0,0.3), ylim = c(0,1),col = 'blue', xlab = NA, ylab = NA, lwd = 2, xaxt = "n", yaxt = "n")
#lines(x2, dCj2, col = 'blue', lwd = 2)
points(0.00221, 0.79945, pch = 19, cex = 1.5)
axis(2, labels = TRUE, cex.axis = 1.5, las = 2)
mtext("Juvenile consumer", side = 2, cex = 1, line = 3.5)

par(mar = c(0, 8, 0, 1))
plot(x, dCa, type = "l", xlim = c(0,0.3), ylim = c(0,50),col = 'darkgreen', xlab = NA, ylab = NA, lwd = 2, xaxt = "n", yaxt = "n")
#lines(x2, dCa2, col = 'darkgreen', lwd = 2)
points(0.00221, 45.3399, pch = 19, cex = 1.5)
axis(2, labels = TRUE, cex.axis = 1.5, las = 2)
mtext("Susceptible \nadult consumer", side = 2, cex = 1, line = 3.5)

par(mar = c(5, 8, 0, 1))
plot(x, dIa, type = "l", xlim = c(0,0.3), ylim = c(0,40), col = 'chartreuse', xlab = NA, ylab = NA, xaxt = "n", lwd = 2, yaxt = "n")
#lines(x2, dIa2, col = 'chartreuse', lwd = 2)
points(0.00221, 0, pch = 19, cex = 1.5)
axis(1, labels = TRUE, cex.axis = 1.5)
mtext("Infection rate", side = 1, cex = 1, line = 3.5)
axis(2, labels = TRUE, cex.axis = 1.5, las = 2)
mtext("Infected \nadult consumer", side = 2, cex = 1, line = 3.5)
