#!/usr/bin/env Rscript

cim <- read.csv("cim.csv", header = TRUE)
mini <- read.csv("minicim.csv", header = TRUE)

cim$Power = cim$Power * 2
mini$Power = mini$Power * 3

x11()
plot(cim$Time,
     cim$Power,
     col="red",
     ylim = c(0, 800),
     type="l",
     xlab="Time (s)",
     ylab="Power (W)",
     main="Stall Power - 2 CIM vs. 3 MiniCIM")
points(mini$Time,
       mini$Power,
       col="blue",
       type="l")
legend(x = "bottomright",
       legend = c("CIM", "MiniCIM"),
       col = c("red", "blue"),
       lty = 1,
       bty = "n",
       cex = 0.8)

Sys.sleep(1000)
