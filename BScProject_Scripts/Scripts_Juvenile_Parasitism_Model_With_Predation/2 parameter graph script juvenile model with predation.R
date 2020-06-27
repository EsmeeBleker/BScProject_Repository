i <- graph$points[,1]
e <- graph$points[,2]

i2 <- graph2$points[,1]
e2 <- graph2$points[,2]

i3 <- IEcurve$V1
e3 <- IEcurve$V2


mat <- matrix(c(1), nrow = 1, ncol = 1)
layout(mat)

par(mar = c(5, 8, 0, 1))
plot(e,i, type = "l", xlim = c(0,1), ylim = c(0,0.5),col = 'blue', xlab = NA, ylab = NA, lwd = 2, xaxt = "n", yaxt = "n")
lines(e2, i2, col = 'blue', lwd = 2)
lines(e3, i3, col = 'red', lwd = 2)
axis(1, labels = TRUE, cex.axis = 1.5)
mtext("Parasite-induced energetic costs", side = 1, cex = 1, line = 3.5)
axis(2, labels = TRUE, cex.axis = 1.5, las = 2)
mtext("Infection rate", side = 2, cex = 1, line = 3.5)