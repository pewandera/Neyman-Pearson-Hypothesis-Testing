# ==========================================================
# Neyman-Pearson Hypothesis Testing
# File: 11_visualization.R
# Author: Wandera Paul Emmanuel
# ==========================================================

# Clear workspace
rm(list = ls())

# Load packages
library(ggplot2)

# Load dataset
iris_data <- read.csv("data/iris.csv")

# Create figures folder if it does not exist
if (!dir.exists("figures")) {
  dir.create("figures")
}

# ==========================================================
# Boxplot
# ==========================================================

boxplot1 <- ggplot(
  iris_data,
  aes(x = Species,
      y = Sepal.Length,
      fill = Species)
) +
  geom_boxplot() +
  labs(
    title = "Sepal Length by Species",
    x = "Species",
    y = "Sepal Length (cm)"
  ) +
  theme_minimal()

print(boxplot1)

ggsave(
  filename = "figures/boxplot_sepal_length.png",
  plot = boxplot1,
  width = 7,
  height = 5
)

# ==========================================================
# Histogram
# ==========================================================

histogram1 <- ggplot(
  iris_data,
  aes(x = Sepal.Length,
      fill = Species)
) +
  geom_histogram(
    bins = 15,
    alpha = 0.6,
    position = "identity"
  ) +
  labs(
    title = "Distribution of Sepal Length",
    x = "Sepal Length (cm)",
    y = "Frequency"
  ) +
  theme_minimal()

print(histogram1)

ggsave(
  filename = "figures/histogram_sepal_length.png",
  plot = histogram1,
  width = 7,
  height = 5
)

# ==========================================================
# Density Plot
# ==========================================================

density1 <- ggplot(
  iris_data,
  aes(x = Sepal.Length,
      colour = Species)
) +
  geom_density(linewidth = 1) +
  labs(
    title = "Density of Sepal Length",
    x = "Sepal Length (cm)",
    y = "Density"
  ) +
  theme_minimal()

print(density1)

ggsave(
  filename = "figures/density_sepal_length.png",
  plot = density1,
  width = 7,
  height = 5
)

# ==========================================================
# Scatter Plot
# ==========================================================

scatter1 <- ggplot(
  iris_data,
  aes(
    x = Sepal.Length,
    y = Petal.Length,
    colour = Species
  )
) +
  geom_point(size = 3) +
  labs(
    title = "Sepal Length vs Petal Length",
    x = "Sepal Length (cm)",
    y = "Petal Length (cm)"
  ) +
  theme_minimal()

print(scatter1)

ggsave(
  filename = "figures/scatter_sepal_petal.png",
  plot = scatter1,
  width = 7,
  height = 5
)

cat("\nAll figures have been saved in the figures folder.\n")
