# ==========================================================
# Neyman-Pearson Hypothesis Testing
# File: 05_left_tailed_test.R
# Author: Wandera Paul Emmanuel
# ==========================================================

# Clear workspace
rm(list = ls())

# Load dataset
iris_data <- read.csv("data/iris.csv")

# Compare Setosa and Versicolor
iris_subset <- subset(
  iris_data,
  Species %in% c("setosa", "versicolor")
)

# ==========================================================
# LEFT-TAILED HYPOTHESIS TEST
# ==========================================================

cat("===========================================\n")
cat(" LEFT-TAILED HYPOTHESIS TEST\n")
cat("===========================================\n\n")

cat("Null Hypothesis (H0):\n")
cat("μ(Setosa) ≥ μ(Versicolor)\n\n")

cat("Alternative Hypothesis (H1):\n")
cat("μ(Setosa) < μ(Versicolor)\n\n")

# Significance level
alpha <- 0.05

cat("Significance Level (α):", alpha, "\n\n")

# Perform left-tailed t-test
test <- t.test(
  Sepal.Length ~ Species,
  data = iris_subset,
  alternative = "less",
  conf.level = 1 - alpha
)

print(test)

# Decision
cat("\n===========================================\n")
cat("Decision Rule\n")
cat("===========================================\n")

if (test$p.value < alpha) {
  cat("Decision: Reject H0\n")
} else {
  cat("Decision: Fail to Reject H0\n")
}

# Conclusion
cat("\n===========================================\n")
cat("Conclusion\n")
cat("===========================================\n")

if (test$p.value < alpha) {
  cat("There is sufficient evidence that the mean Sepal Length\n")
  cat("of Setosa is less than that of Versicolor.\n")
} else {
  cat("There is insufficient evidence that the mean Sepal Length\n")
  cat("of Setosa is less than that of Versicolor.\n")
}
