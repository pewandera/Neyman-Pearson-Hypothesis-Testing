# ==========================================================
# Neyman-Pearson Hypothesis Testing
# File: 08_critical_regions.R
# Author: Wandera Paul Emmanuel
# ==========================================================

# Clear workspace
rm(list = ls())

cat("========================================================\n")
cat("     CRITICAL REGIONS AND DECISION RULES\n")
cat("========================================================\n\n")

# Significance level
alpha <- 0.05

# Degrees of freedom
df <- 98

cat("Significance Level (α):", alpha, "\n")
cat("Degrees of Freedom:", df, "\n\n")

# ==========================================================
# TWO-SIDED TEST
# ==========================================================

cat("--------------------------------------------------------\n")
cat("1. TWO-SIDED TEST\n")
cat("--------------------------------------------------------\n")

critical_two <- qt(1 - alpha/2, df)

cat("Critical Values:\n")
cat("Lower =", round(-critical_two,4), "\n")
cat("Upper =", round(critical_two,4), "\n\n")

cat("Decision Rule:\n")
cat("Reject H0 if\n")
cat("t <", round(-critical_two,4),
    "or t >", round(critical_two,4), "\n\n")

# ==========================================================
# LEFT-TAILED TEST
# ==========================================================

cat("--------------------------------------------------------\n")
cat("2. LEFT-TAILED TEST\n")
cat("--------------------------------------------------------\n")

critical_left <- qt(alpha, df)

cat("Critical Value:", round(critical_left,4), "\n\n")

cat("Decision Rule:\n")
cat("Reject H0 if t <", round(critical_left,4), "\n\n")

# ==========================================================
# RIGHT-TAILED TEST
# ==========================================================

cat("--------------------------------------------------------\n")
cat("3. RIGHT-TAILED TEST\n")
cat("--------------------------------------------------------\n")

critical_right <- qt(1 - alpha, df)

cat("Critical Value:", round(critical_right,4), "\n\n")

cat("Decision Rule:\n")
cat("Reject H0 if t >", round(critical_right,4), "\n\n")

# ==========================================================
# SUMMARY TABLE
# ==========================================================

summary_table <- data.frame(

  Test = c(
    "Two-sided",
    "Left-tailed",
    "Right-tailed"
  ),

  Critical_Value = c(
    paste0(
      round(-critical_two,3),
      " , ",
      round(critical_two,3)
    ),
    round(critical_left,3),
    round(critical_right,3)
  )

)

cat("========================================================\n")
cat("SUMMARY OF CRITICAL REGIONS\n")
cat("========================================================\n")

print(summary_table)
