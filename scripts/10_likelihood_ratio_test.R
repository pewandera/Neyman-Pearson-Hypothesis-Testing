# ==========================================================
# Neyman-Pearson Hypothesis Testing
# File: 10_likelihood_ratio_test.R
# Author: Wandera Paul Emmanuel
# ==========================================================

# Clear workspace
rm(list = ls())

cat("=====================================================\n")
cat("      LIKELIHOOD RATIO TEST (LRT)\n")
cat("=====================================================\n\n")

# ------------------------------------------------------
# Example: One observation from a Normal distribution
# Known variance = 1
#
# H0: mu = 5
# H1: mu = 6
# ------------------------------------------------------

# Observed value
x <- 5.8

# Known standard deviation
sigma <- 1

# Hypothesized means
mu0 <- 5
mu1 <- 6

# ------------------------------------------------------
# Likelihood under H0
# ------------------------------------------------------

L0 <- dnorm(x, mean = mu0, sd = sigma)

# ------------------------------------------------------
# Likelihood under H1
# ------------------------------------------------------

L1 <- dnorm(x, mean = mu1, sd = sigma)

# ------------------------------------------------------
# Likelihood Ratio
# ------------------------------------------------------

LR <- L0 / L1

cat("Observed value:", x, "\n")
cat("Likelihood under H0:", round(L0, 6), "\n")
cat("Likelihood under H1:", round(L1, 6), "\n")
cat("Likelihood Ratio (L0/L1):", round(LR, 6), "\n\n")

# ------------------------------------------------------
# Decision
# ------------------------------------------------------

if (LR < 1) {

  cat("Evidence favours H1.\n")

} else {

  cat("Evidence favours H0.\n")

}

cat("\nInterpretation:\n")
cat("A smaller likelihood ratio indicates stronger evidence\n")
cat("against H0 and in favour of H1.\n")
