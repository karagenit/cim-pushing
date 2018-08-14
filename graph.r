#!/usr/bin/env Rscript

cim <- read.csv("cim.csv", header = TRUE)
mini <- read.csv("minicim.csv", header = TRUE)
pro <- read.csv("775.csv", header = TRUE)

cim$Power = cim$Power * 2
mini$Power = mini$Power * 3
pro$Power = pro$Power * 3

x11()
plot(cim$Time,
     cim$Power,
     col="red",
     ylim = c(0, 1100),
     type="l",
     xlab="Time (s)",
     ylab="Power (W)",
     main="Peak Power - 2 CIM vs. 3 MiniCIM vs 3 775pro")
points(mini$Time,
       mini$Power,
       col="blue",
       type="l")
points(pro$Time,
       pro$Power,
       col="green",
       type="l")
legend(x = "bottomright",
       legend = c("CIM", "MiniCIM", "775pro"),
       col = c("red", "blue", "green"),
       lty = 1,
       bty = "n",
       cex = 0.8)

dev.print(png, "plot.png", width = 1000, height = 1000)

Sys.sleep(1000)
