
# Q3. Comparison of Class A and Class B

# Input Data
A <- c(76, 35, 47, 64, 95, 66, 89, 36, 84)
B <- c(51, 56, 84, 60, 59, 70, 63, 66, 50)

# (i) Mean, Median and Range

cat("Class A Statistics:\n")
cat("Mean =", mean(A), "\n")
cat("Median =", median(A), "\n")
cat("Range =", max(A) - min(A), "\n")

cat("\nClass B Statistics:\n")
cat("Mean =", mean(B), "\n")
cat("Median =", median(B), "\n")
cat("Range =", max(B) - min(B), "\n")

# (ii) Boxplot
boxplot(A, B,
        names = c("Class A", "Class B"),
        main = "Comparison of Class A and Class B",
        xlab = "Classes",
        ylab = "Marks",
        col = c("lightblue", "lightgreen"))
