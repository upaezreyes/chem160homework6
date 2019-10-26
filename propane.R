# Solve the density that will give a pressure of 200 bar

d1 = 33.258 
d2 = -7.5884 
d3 = 1.0306 
d4 = -0.058757
d5 = -0.0033566
d6 = 0.00060696


# P = d1x + d2x^2 + d3x^3 + d4x^4 + d5x^5 + d6x^6
roots = polyroot(c(d1,d2,d3,d4,d5,d6))
cat("Density of Propane at a pressure of 200 bar: ",roots)