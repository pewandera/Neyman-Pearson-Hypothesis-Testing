# ==========================================================
# Neyman-Pearson Hypothesis Testing
# File: 09_power_analysis.R
# Author: Wandera Paul Emmanuel
# ==========================================================

# Clear workspace
rm(list = ls())

cat("====================================================\n")
cat("          STATISTICAL POWER ANALYSIS\n")
cat("====================================================\n\n")

# Install pwr package if necessary
if (!require(pwr)) {
  install.packages("pwr")
  library(pwr)
} else {
  library(pwr)
}

# -----------------------------------------------------
# Parameters
# -----------------------------------------------------

alpha <- 0.05
effect_size <- 0.80
sample_size <- 50

cat("Significance Level (α):", alpha, "\n")
cat("Effect Size (Cohen's d):", effect_size, "\n")
cat("Sample Size per Group:", sample_size, "\n\n")

# -----------------------------------------------------
# Calculate Statistical Power
# -----------------------------------------------------

power_result <- pwr.t.test(
  n = sample_size,
  d = effect_size,
  sig.level = alpha,
  type = "two.sample",
  alternative = "two.sided"
)

cat("Estimated Statistical Power\n\n")

print(power_result)

# -----------------------------------------------------
# Calculate Required Sample Size
# -----------------------------------------------------

required_n <- pwr.t.test(
  d = effect_size,
  sig.level = alpha,
  power = 0.80,
  type = "two.sample",
  alternative = "two.sided"
)

cat("\nRequired Sample Size for 80% Power\n\n")

print(required_n)

# -----------------------------------------------------
# Relationship between α, β and Power
# -----------------------------------------------------

beta <- 1 - power_result$power

cat("\n--------------------------------------\n")
cat("Summary\n")
cat("--------------------------------------\n")

cat("Alpha (Type I Error):", alpha, "\n")
cat("Beta (Type II Error):", round(beta,4), "\n")
cat("Power (1 - Beta):", round(power_result$power,4), "\n")

cat("\nInterpretation:\n")

cat("Increasing the sample size generally increases statistical power.\n")
cat("Increasing the effect size also increases power.\n")
cat("Reducing α usually reduces power unless the sample size is increased.\n")
