# ==========================================================
# Neyman-Pearson Hypothesis Testing
# File: 01_data_import.R
# Author: Wandera Paul Emmanuel
# ==========================================================

# Clear the workspace
rm(list = ls())

# Load the dataset
iris_data <- read.csv("data/iris.csv")

# Display the first six observations
head(iris_data)

# View the structure of the dataset
str(iris_data)

# Summary statistics
summary(iris_data)
