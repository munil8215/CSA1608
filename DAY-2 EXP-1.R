
# Q1. Covariance and Correlation

# Input data
A <- c(18, 2, 20)
B <- c(22, 28, 10)
C <- c(20, 40, 40)

# 1. Sample covariance between B and C
cat("Sample Covariance between B and C:\n")
print(cov(B, C))

# 2. Sample covariance matrix
preferences <- data.frame(A, B, C)

cat("\nSample Covariance Matrix:\n")
print(cov(preferences))

# 3. Sample correlation between B and C
cat("\nSample Correlation between B and C:\n")
print(cor(B, C))

# 4. Sample correlation matrix
cat("\nSample Correlation Matrix:\n")
print(cor(preferences))