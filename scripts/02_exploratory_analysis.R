# ==========================================================
# Neyman-Pearson Hypothesis Testing
# File: 02_exploratory_analysis.R
# Author: Wandera Paul Emmanuel
# ==========================================================

# Load the dataset
iris_data <- read.csv("data/iris.csv")

# Display the first six observations
head(iris_data)

# Structure of the dataset
str(iris_data)

# Summary statistics
summary(iris_data)

# Number of observations by species
table(iris_data$Species)

# Mean of numeric variables by species
aggregate(. ~ Species, data = iris_data, mean)

# Standard deviation of numeric variables by species
aggregate(. ~ Species, data = iris_data, sd)
