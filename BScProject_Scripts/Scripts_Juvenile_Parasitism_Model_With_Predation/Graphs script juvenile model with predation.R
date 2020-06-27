x <- graph$points[,1]
dR <- graph$points[,2]
dCj <- graph$points[,3]
dIj <- graph$points[,4]
dCa <- graph$points[,5]
dIa <- graph$points[,6]
dP <- graph$points[,7]

x2 <- graph2$points[,1]
dR2 <- graph2$points[,2]
dCj2 <- graph2$points[,3]
dIj2 <- graph2$points[,4]
dCa2 <- graph2$points[,5]
dIa2 <- graph2$points[,6]
dP2 <- graph2$points[,7]

x3 <- graph3$points[,1]
dR3 <- graph3$points[,2]
dCj3 <- graph3$points[,3]
dIj3 <- graph3$points[,4]
dCa3 <- graph3$points[,5]
dIa3 <- graph3$points[,6]
dP3 <- graph3$points[,7]

mat <- matrix(c(1,2,3,4,5,6,7), nrow = 7, ncol = 1)
layout(mat)

par(mar = c(0, 8, 1, 1))
plot(x,dR, type = "l", xlim = c(0.55,0.8), ylim = c(0,60),col = 'darkgoldenrod2', xlab = NA, ylab = NA, lwd = 2, xaxt = "n", yaxt = "n")
lines(x2, dR2, col = 'darkgoldenrod2', lwd = 2)
lines(x3, dR3, col = 'darkgoldenrod2', lwd = 2, lty=2)
points(0.66549, 40.35563, pch = 19, cex = 1.5)
points(0.71934, 52.74222, pch = 19, cex = 1.5)
axis(2, labels = TRUE, cex.axis = 1.5, las = 2)
mtext("Resource", side = 2, cex = 1, line = 3.5)

par(mar = c(0, 8, 0, 1))
plot(x, dCj, type = "l", xlim = c(0.3,1), ylim = c(0,5),col = 'blue', xlab = NA, ylab = NA, lwd = 2, xaxt = "n", yaxt = "n")
lines(x2, dCj2, col = 'blue', lwd = 2)
lines(x3, dCj3, col = 'blue', lwd = 2, lty=2)
points(0.66549, 1, pch = 19, cex = 1.5)
points(0.71934, 2.98007, pch = 19, cex = 1.5)
axis(2, labels = TRUE, cex.axis = 1.5, las = 2)
mtext("Susceptible \njuvenile consumer", side = 2, cex = 1, line = 3.5)

par(mar = c(0, 8, 0, 1))
plot(x, dIj, type = "l", xlim = c(0.3,1), ylim = c(0,5),col = 'cyan', xlab = NA, ylab = NA, lwd = 2, xaxt = "n", yaxt = "n")
lines(x2, dIj2, col = 'cyan', lwd = 2)
lines(x3, dIj3, col = 'cyan', lwd = 2, lty=2)
points(0.66549, 4.88985,pch = 19, cex = 1.5)
points(0.71934, 0, pch = 19, cex = 1.5)
axis(2, labels = TRUE, cex.axis = 1.5, las = 2)
mtext("Infected \njuvenile consumer", side = 2, cex = 1, line = 3.5)

par(mar = c(0, 8, 0, 1))
plot(x, dCa, type = "l", xlim = c(0.3,1), ylim = c(0,25),col = 'darkgreen', xlab = NA, ylab = NA, lwd = 2, xaxt = "n", yaxt = "n")
lines(x2, dCa2, col = 'darkgreen', lwd = 2)
lines(x3, dCa3, col = 'darkgreen', lwd = 2, lty=2)
points(0.66549, 21,pch = 19, cex = 1.5)
points(0.71934, 21, pch = 19, cex = 1.5)
axis(2, labels = TRUE, cex.axis = 1.5, las = 2)
mtext("Uninfected \nadult consumer", side = 2, cex = 1, line = 3.5)

par(mar = c(0, 8, 0, 1))
plot(x, dIa, type = "l", xlim = c(0.3,1), ylim = c(0,1),col = 'chartreuse', xlab = NA, ylab = NA, lwd = 2, xaxt = "n", yaxt = "n")
lines(x2, dIa2, col = 'chartreuse', lwd = 2)
lines(x3, dIa3, col = 'chartreuse', lwd = 2, lty=2)
points(0.66549, 0 ,pch = 19, cex = 1.5)
points(0.71934, 0, pch = 19, cex = 1.5)
axis(2, labels = TRUE, cex.axis = 1.5, las = 2)
mtext("Infected \nadult consumer", side = 2, cex = 1, line = 3.5)

par(mar = c(0, 8, 0, 1))
plot(x, dP, type = "l", xlim = c(0.3,1), ylim = c(0,15), col = 'darkorchid', xlab = NA, ylab = NA, xaxt = "n", lwd = 2, yaxt = "n")
lines(x2, dP2, col = 'darkorchid', lwd = 2)
lines(x3, dP3, col = 'darkorchid', lwd = 2, lty=2)
points(0.66549, 1.98625 , pch = 19, cex = 1.5)
points(0.71934, 11.41476, pch = 19, cex = 1.5)
axis(1, labels = TRUE, cex.axis = 1.5)
mtext("Parasite-induced energetic costs", side = 1, cex = 1, line = 3.5)
axis(2, labels = TRUE, cex.axis = 1.5, las = 2)
mtext("Predator on \nadult consumer", side = 2, cex = 1, line = 3.5)