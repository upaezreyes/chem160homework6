# Calculate the pressure from the Peng-Robinson equation for CO2
Vbar = 0.05  # L/mole
T = 280   # K
alpha = 4.192  # bar*L^2/mole^2
beta = 0.02665 # L/mole
R = 0.083145  # bar*L/K*mole

# Peng-Robinson equation:
P = ((R*T)/(Vbar-beta)) - ((alpha)/(Vbar*(Vbar+beta) + beta*(Vbar-beta)))

cat("Pressure from the Peng-Robinson equation, for CO2:",P)