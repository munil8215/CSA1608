
# Q2. Equal-Frequency Partitioning and Data Smoothing

# Input data: All Electronics item prices
data <- c(
  1, 1, 5, 5, 5, 5, 5, 8, 8,
  10, 10, 10, 10, 12,
  14, 14, 14,
  15, 15, 15, 15, 15, 15,
  18, 18, 18, 18, 18,
  20, 20, 20, 20, 20, 20,
  21, 21, 21, 21,
  25, 25, 25, 25, 25,
  28, 28, 30
)

# (i) Equal-Frequency Partitioning
num_bins <- 3

bin_indices <- cut(
  seq_along(data),
  breaks = num_bins,
  labels = FALSE
)

bins <- split(data, bin_indices)

cat("Equal-Frequency Bins:\n")
print(bins)

# (ii) Smoothing by Bin Mean
smoothed_mean <- lapply(bins, function(x) {
  rep(mean(x), length(x))
})

cat("Smoothed Data by Bin Mean:\n")
print(unlist(smoothed_mean))

# Smoothing by Bin Boundaries
smoothed_boundaries <- lapply(bins, function(x) {
  lower <- min(x)
  upper <- max(x)
  
  sapply(x, function(value) {
    if (abs(value - lower) <= abs(value - upper)) {
      lower
    } else {
      upper
    }
  })
})

cat("Smoothed Data by Bin Boundaries:\n")
print(unlist(smoothed_boundaries))

# (iii) Plot Histogram
hist(
  data,
  breaks = 3,
  col = "lightblue",
  main = "Histogram of All Electronics Prices",
  xlab = "Item Prices",
  ylab = "Frequency",
  border = "black"
)
