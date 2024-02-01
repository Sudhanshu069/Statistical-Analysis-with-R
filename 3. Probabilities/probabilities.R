simulated_rolls <- sample(1:6, size = 1000, replace = TRUE)
empirical_probabilities <- table(simulated_rolls) / length(simulated_rolls)
theoretical_probabilities <- rep(1/6, 6)  # Assuming a fair six-sided die

# Barplot for Theoretical Probabilities
barplot(theoretical_probabilities, names.arg = 1:6, ylim = c(0, 1), col = "blue", main = "Theoretical Probabilities")

# Barplot for Empirical Probabilities
barplot(empirical_probabilities, names.arg = 1:6, ylim = c(0, 1), col = "red", main = "Empirical Probabilities")
