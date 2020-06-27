x <- graph$points[,1]
dR <- graph$points[,2]
dCj <- graph$points[,3]
dCa <- graph$points[,4]
dIa <- graph$points[,5]
dP <- graph$points[,6]

x2 <- graph2$points[,1]
dR2 <- graph2$points[,2]
dCj2 <- graph2$points[,3]
dCa2 <- graph2$points[,4]
dIa2 <- graph2$points[,5]
dP2 <- graph2$points[,6]

x3 <- graph3$points[,1]
dR3 <- graph3$points[,2]
dCj3 <- graph3$points[,3]
dCa3 <- graph3$points[,4]
dIa3 <- graph3$points[,5]
dP3 <- graph3$points[,6]

x4 <- graph4$points[,1]
dR4 <- graph4$points[,2]
dCj4 <- graph4$points[,3]
dCa4 <- graph4$points[,4]
dIa4 <- graph4$points[,5]
dP4 <- graph4$points[,6]

mat <- matrix(c(1,2,3,4,5,6), nrow = 6, ncol = 1)
layout(mat)

par(mar = c(0, 8, 1, 1))
plot(x,dR, type = "l", xlim = c(0,0.3), ylim = c(0,80),col = 'darkgoldenrod2', xlab = NA, ylab = NA, lwd = 2, xaxt = "n", yaxt = "n")
lines(x2, dR2, col = 'darkgoldenrod2', lwd = 2)
points(0.05725, 52.40862, pch = 19, cex = 1.5)
axis(2, labels = TRUE, cex.axis = 1.5, las = 2)
mtext("Resource", side = 2, cex = 1, line = 3.5)

par(mar = c(0, 8, 0, 1))
plot(x, dCj, type = "l", xlim = c(0,0.3), ylim = c(0,5),col = 'blue', xlab = NA, ylab = NA, lwd = 2, xaxt = "n", yaxt = "n")
lines(x2, dCj2, col = 'blue', lwd = 2)
points(0.05725, 2.97792, pch = 19, cex = 1.5)
axis(2, labels = TRUE, cex.axis = 1.5, las = 2)
mtext("Juvenile consumer", side = 2, cex = 1, line = 3.5)

par(mar = c(0, 8, 0, 1))
plot(x, dCa, type = "l", xlim = c(0,0.3), ylim = c(0,25),col = 'darkgreen', xlab = NA, ylab = NA, lwd = 2, xaxt = "n", yaxt = "n")
lines(x2, dCa2, col = 'darkgreen', lwd = 2)
points(0.05725, 21.25, pch = 19, cex = 1.5)
axis(2, labels = TRUE, cex.axis = 1.5, las = 2)
mtext("Susceptible \nadult consumer", side = 2, cex = 1, line = 3.5)

par(mar = c(0, 8, 0, 1))
plot(x, dIa, type = "l", xlim = c(0,0.3), ylim = c(0,25),col = 'chartreuse', xlab = NA, ylab = NA, lwd = 2, xaxt = "n", yaxt = "n")
lines(x2, dIa2, col = 'chartreuse', lwd = 2)
points(0.05725, 0, pch = 19, cex = 1.5)
axis(2, labels = TRUE, cex.axis = 1.5, las = 2)
mtext("Infected \nadult consumer", side = 2, cex = 1, line = 3.5)

par(mar = c(1, 8, 0, 1))
plot(x, dP, type = "l", xlim = c(0,0.3), ylim = c(0,15), col = 'darkorchid', xlab = NA, ylab = NA, xaxt = "n", lwd = 2, yaxt = "n")
lines(x2, dP2, col = 'darkorchid', lwd = 2)
points(0.05725, 11.16633 , pch = 19, cex = 1.5)
axis(1, labels = TRUE, cex.axis = 1.5)
mtext("Infection rate", side = 1, cex = 1, line = 3.5)
axis(2, labels = TRUE, cex.axis = 1.5, las = 2)
mtext("Pedator on \nadult consumer", side = 2, cex = 1, line = 3.5)
