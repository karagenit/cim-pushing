#!/usr/bin/env Rscript

cim <- read.csv("cim.csv", header = TRUE)
mini <- read.csv("minicim.csv", header = TRUE)

x11()
plot(cim$Time, cim$Power, col="red", ylim = c(0, 400), type="l",
     xlab="Time (s)", ylab="Power (W)")
points(mini$Time, mini$Power, col="blue", type="l")

Sys.sleep(1000)
