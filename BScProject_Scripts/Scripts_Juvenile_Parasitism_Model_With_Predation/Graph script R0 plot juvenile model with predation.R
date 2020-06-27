x = R0$e
yl = R0$lbp
yr = R0$rbp


par(mar = c(5, 5, 5, 5))
plot(x,yl, type = "l", xlim = c(0,1), ylim = c(0,3),col = 'red', xlab = NA, ylab = NA, lwd = 2, xaxt = "n", yaxt = "n")
lines(x, yr, col = 'blue', lwd = 2)
abline(v=0.66549, col = 'gray80', lwd = 0.5)
abline(v=0.71934, col = 'gray80', lwd =0.5)
abline(h=1, col = 'gray80', lwd =0.5)
axis(1, labels = TRUE, cex.axis = 1)
mtext("Parasite-induced energetic costs", side = 1, cex = 1.1, line = 3.5)
axis(2, labels = TRUE, cex.axis = 1, las = 2)
mtext("R-naught", side = 2, cex = 1.1, line = 3.5)
