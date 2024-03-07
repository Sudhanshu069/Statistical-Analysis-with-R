# Load required libraries
library(ggplot2)
# Load the dataset
data <- read.csv("D:/Practice/r/Statistical-Analysis-with-R/5. Regression/dataset/Ice Cream Sales - temperatures.csv")

names(data)
# Perform linear regression
linear_model <- lm(Ice.Cream.Profits ~ Temperature, data = data)
# Perform multiple regression
multiple_model <- lm(Ice.Cream.Profits ~ Temperature + Temperature, data = data)
# Perform polynomial regression
poly_model <- lm(Ice.Cream.Profits ~ poly(Temperature, degree = 2), data = data)

# Evaluate model performance
summary(linear_model)
summary(multiple_model)
summary(poly_model)

# Visualize regression results
ggplot(data, aes(x = Temperature, y = Ice.Cream.Profits)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "green") +
  labs(title = "Regression Analysis", x = "Temperature", y = "Ice.Cream.Profits")
