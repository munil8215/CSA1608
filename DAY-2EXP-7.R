
# Install the package (run only once)
install.packages("HSAUR")

# Load the package
library(HSAUR)

# Load the water dataset
data("water", package = "HSAUR")

# Display the dataset
print(water)

# Scatter plot
plot(mortality ~ hardness, data = water,
     main = "Mortality vs Water Hardness",
     xlab = "Water Hardness",
     ylab = "Mortality",
     pch = 19,
     col = "blue")

# Linear regression model
model <- lm(mortality ~ hardness, data = water)

# Display model summary
print(summary(model))

# Add regression line
abline(model, col = "red", lwd = 2)

# Predict mortality when hardness = 88
new_data <- data.frame(hardness = 88)
prediction <- predict(model, newdata = new_data)

cat("Predicted mortality for hardness = 88:\n")
print(prediction)
