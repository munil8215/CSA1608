
# Q8. Boxplot of MPG and Cylinders

# Load the built-in dataset
data(mtcars)

# Convert cylinders into a factor
mtcars$cyl <- as.factor(mtcars$cyl)

# Create boxplot
boxplot(mpg ~ cyl,
        data = mtcars,
        main = "MPG vs Number of Cylinders",
        xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon (MPG)",
        col = c("lightblue", "lightgreen", "lightpink"),
        border = "black")

# Display summary statistics |> 
cat("Summary of MPG by Cylinders:\n")
print(tapply(mtcars$mpg, mtcars$cyl, summary))
