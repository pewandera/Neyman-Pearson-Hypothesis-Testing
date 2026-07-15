# ==========================================================
# Neyman-Pearson Hypothesis Testing
# File: 03_assumption_checks.R
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

# ----------------------------------------
# Assumption 1: Normality
# ----------------------------------------

cat("Shapiro-Wilk Test for Setosa\n")
print(
  shapiro.test(
    iris_subset$Sepal.Length[
      iris_subset$Species == "setosa"
    ]
  )
)

cat("\nShapiro-Wilk Test for Versicolor\n")
print(
  shapiro.test(
    iris_subset$Sepal.Length[
      iris_subset$Species == "versicolor"
    ]
  )
)

# ----------------------------------------
# Assumption 2: Equality of Variances
# ----------------------------------------

cat("\nF Test for Equality of Variances\n")

print(
  var.test(
    Sepal.Length ~ Species,
    data = iris_subset
  )
)

# ----------------------------------------
# QQ Plots
# ----------------------------------------

par(mfrow = c(1,2))

qqnorm(
  iris_subset$Sepal.Length[
    iris_subset$Species=="setosa"
  ],
  main="Setosa"
)

qqline(
  iris_subset$Sepal.Length[
    iris_subset$Species=="setosa"
  ]
)

qqnorm(
  iris_subset$Sepal.Length[
    iris_subset$Species=="versicolor"
  ],
  main="Versicolor"
)

qqline(
  iris_subset$Sepal.Length[
    iris_subset$Species=="versicolor"
  ]
)

par(mfrow=c(1,1))
