# ==========================================================
# Neyman-Pearson Hypothesis Testing
# File: 07_type_I_and_type_II_errors.R
# Author: Wandera Paul Emmanuel
# ==========================================================

# Clear workspace
rm(list = ls())

cat("===============================================\n")
cat(" TYPE I AND TYPE II ERRORS\n")
cat("===============================================\n\n")

# Significance level
alpha <- 0.05

# Statistical power
power <- 0.80

# Type II Error
beta <- 1 - power

cat("Significance Level (α):", alpha, "\n")
cat("Power (1 - β):", power, "\n")
cat("Type II Error (β):", beta, "\n\n")

cat("-----------------------------------------------\n")
cat("Decision Outcomes\n")
cat("-----------------------------------------------\n\n")

decision_table <- data.frame(

  Reality = c(
    "H0 is True",
    "H0 is True",
    "H0 is False",
    "H0 is False"
  ),

  Decision = c(
    "Fail to Reject H0",
    "Reject H0",
    "Fail to Reject H0",
    "Reject H0"
  ),

  Outcome = c(
    "Correct Decision",
    "Type I Error",
    "Type II Error",
    "Correct Decision"
  )

)

print(decision_table)

cat("\n-----------------------------------------------\n")
cat("Interpretation\n")
cat("-----------------------------------------------\n\n")

cat("Type I Error (α): Rejecting a true null hypothesis.\n\n")

cat("Type II Error (β): Failing to reject a false null hypothesis.\n\n")

cat("Power: Probability of correctly rejecting a false null hypothesis.\n\n")

cat("In practice, decreasing α usually increases β unless the sample size is increased.\n")
