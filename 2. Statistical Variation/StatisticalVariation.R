# Create a sample dataset
set.seed(123)
data <- rnorm(100, mean = 50, sd = 10)

# Range
range_val <- range(data)

# Plot
plot(range_val, type = "p", main = "Range", xlab = "Range", ylab = "")

# Quartiles
quartiles <- quantile(data)

# Quartile Deviation
qdev <- IQR(data) / 2

# Plot
boxplot(data, main = "Quartile Deviation", xlab = "", ylab = "")
arrows(1, quartiles[2], 1, quartiles[2] + qdev, angle = 90, code = 3, length = 0.1, col = "red")
arrows(1, quartiles[2], 1, quartiles[2] - qdev, angle = 90, code = 3, length = 0.1, col = "red")

# Standard Deviation
std_dev <- sd(data)

# Plot
hist(data, main = "Standard Deviation", xlab = "", ylab = "", col = "lightblue")
abline(v = c(mean(data) - std_dev, mean(data) + std_dev), col = "red", lty = 2)

# Variance
variance <- var(data)

# Plot
plot(variance, type = "p", main = "Variance", xlab = "Variance", ylab = "")