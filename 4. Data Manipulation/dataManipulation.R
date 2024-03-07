# Install and load required libraries (if not already installed)
install.packages("readr")
library(readr)

# Import the dataset into an R data frame
dataset <- read.csv("D:/Practice/r/Statistical-Analysis-with-R/4. Data Manipulation/dataset/globalterrorismdb.csv")

# Display the structure of the data frame
str(dataset)

# Display the first few rows of the dataset
head(dataset)

# Summarize basic statistics for numerical variables
summary(dataset)

# Subset the data based on a condition
subset_data <- dataset[dataset$Column_Name > 50, ]

# Check if 'old_variable' exists in the dataset
if ("old_variable" %in% names(dataset)) {
  # Create a new variable or column
  dataset$new_variable <- dataset$old_variable * 2
} else {
  # Print an error message if 'old_variable' doesn't exist
  print("Error: 'old_variable' does not exist in the dataset.")
}

# Filter the data based on specific criteria
filtered_data <- subset(dataset, country_txt == "United States")
print(filtered_data)
# Check if 'Reviews' column exists in the dataset and is numeric
if ("iyear" %in% names(dataset) && is.numeric(dataset$iyear)) {
  # Calculate mean, median, and standard deviation
  mean_value <- mean(dataset$iyear, na.rm = TRUE)  # na.rm = TRUE removes missing values
  median_value <- median(dataset$iyear, na.rm = TRUE)
  sd_value <- sd(dataset$iyear, na.rm = TRUE)
} else {
  # Print an error message if 'Reviews' column doesn't exist or is not numeric
  print("Error: 'Reviews' column does not exist in the dataset or is not numeric.")
}


# Tabulate frequencies for categorical variables
table(dataset$country_txt)

# Create a histogram for a numeric variable
hist(dataset$imonth, main = "Distribution of Attacks", xlab = "Months")

# Create a bar plot for a categorical variable
barplot(table(dataset$iyear), main = "Frequency of Attacks in years")
