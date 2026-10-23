# Input Data
x <- c(200, 300, 400, 600, 1000)

# Display Original Data
cat("Original Data:\n")
print(x)

# (a) Min-Max Normalization (Range 0 to 1)
min_max_norm <- (x - min(x)) / (max(x) - min(x))

cat("\n(a) Min-Max Normalization Output:\n")
print(min_max_norm)

# (b) Z-Score Normalization
z_score_norm <- (x - mean(x)) / sd(x)

cat("\n(b) Z-Score Normalization Output:\n")
print(z_score_norm)