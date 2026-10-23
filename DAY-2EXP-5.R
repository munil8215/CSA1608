
# Q5. Histogram of AirPassengers Dataset

# Load built-in dataset
data("AirPassengers")

# Display the dataset
print(AirPassengers)

# Create histogram
hist(
  AirPassengers,
  breaks = seq(100, 700, by = 150),
  main = "Histogram of AirPassengers Dataset",
  xlab = "Number of Passengers",
  ylab = "Frequency",
  col = "lightblue",
  border = "black",
  xlim = c(100, 700)
)
