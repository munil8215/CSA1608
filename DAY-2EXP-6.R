
# Q6. Multiple Lines in a Line Chart

# Load the dataset
data(mtcars)

# Display the mpg and qsec values
print(mtcars[, c("mpg", "qsec")])

# Plot multiple lines using a single plot function
matplot(
  mtcars[, c("mpg", "qsec")],
  type = "l",
  lty = 1,
  col = c("blue", "red"),
  main = "Multiple Line Chart: MPG and QSEC",
  xlab = "Car Index",
  ylab = "Values"
)

# Add legend
legend(
  "topright",
  legend = c("MPG", "QSEC"),
  col = c("blue", "red"),
  lty = 1
)
