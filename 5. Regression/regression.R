# Load required libraries
library(ggplot2)


# Load the dataset
data <- read.csv("D:/Practice/r/Statistical-Analysis-with-R/5. Regression/dataset/spotify-2023.csv")


# Perform linear regression
linear_model <- lm(streams ~ released_day, data = data)


# Perform multiple regression
multiple_model <- lm(dependent_variable ~ independent_var1 + independent_var2, data = data)


# Perform polynomial regression
poly_model <- lm(dependent_variable ~ poly(independent_variable, degree = 2), data = data)


# Evaluate model performance
summary(linear_model)
summary(multiple_model)
summary(poly_model)


# Visualize regression results
ggplot(data, aes(x = independent_variable, y = dependent_variable)) +
  
  geom_point() +
  
  geom_smooth(method = "lm", se = FALSE, color = "blue") +
  
  labs(title = "Regression Analysis", x = "Independent Variable", y = "Dependent Variable")