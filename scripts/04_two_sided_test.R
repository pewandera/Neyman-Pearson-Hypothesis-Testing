# ==========================================================
# Neyman-Pearson Hypothesis Testing
# File: 04_two_sided_test.R
# Author: Wandera Paul Emmanuel
# ==========================================================

# Clear workspace
rm(list = ls())

# Load dataset
iris_data <- read.csv("data/iris.csv")

# Select Setosa and Versicolor
iris_subset <- subset(
  iris_data,
  Species %in% c("setosa", "versicolor")
)

# ==========================================================
# TWO-SIDED HYPOTHESIS TEST
# ==========================================================

cat("===========================================\n")
cat(" TWO-SIDED HYPOTHESIS TEST\n")
cat("===========================================\n\n")

cat("Null Hypothesis (H0):\n")
cat("Mean Sepal Length of Setosa = Mean Sepal Length of Versicolor\n\n")

cat("Alternative Hypothesis (H1):\n")
cat("Mean Sepal Length of Setosa ≠ Mean Sepal Length of Versicolor\n\n")

# Significance level
alpha <- 0.05

cat("Significance Level (alpha):", alpha, "\n\n")

# Perform the t-test
test <- t.test(
  Sepal.Length ~ Species,
  data = iris_subset,
  alternative = "two.sided",
  conf.level = 1 - alpha
)

print(test)

# Decision Rule
cat("\n===========================================\n")
cat("Decision Rule\n")
cat("===========================================\n")

if(test$p.value < alpha){

  cat("Reject H0\n")

} else {

  cat("Fail to Reject H0\n")

}

# Interpretation
cat("\n===========================================\n")
cat("Interpretation\n")
cat("===========================================\n")

if(test$p.value < alpha){

  cat("There is sufficient statistical evidence that\n")
  cat("the mean Sepal Length differs between Setosa\n")
  cat("and Versicolor.\n")

} else {

  cat("There is insufficient evidence to conclude\n")
  cat("that the two species differ in mean Sepal Length.\n")

}
