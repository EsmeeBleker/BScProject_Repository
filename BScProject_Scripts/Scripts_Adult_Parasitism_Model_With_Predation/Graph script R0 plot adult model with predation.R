i = 0.1
b = 0.1
muc = 0.1

x = graph$points[,1]
Ca = graph$points[,4]
P = graph$points[,6]
R0 = (i*Ca) / (b*P + muc)


par(mar = c(5, 5, 5, 5))
plot(x,R0, type = "l", xlim = c(0,0.3), ylim = c(0,2),col = 'black', xlab = NA, ylab = NA, lwd = 2, xaxt = "n", yaxt = "n")
axis(1, labels = TRUE, cex.axis = 1)
mtext("Parasite-induced energetic costs", side = 1, cex = 1.1, line = 3.5)
axis(2, labels = TRUE, cex.axis = 1, las = 2)
mtext("R-naught", side = 2, cex = 1.1, line = 3.5)
