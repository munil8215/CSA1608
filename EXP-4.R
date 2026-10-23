# Input Data
data <- c(11,13,13,15,15,16,19,20,20,20,21,21,22,23,24,30,40,45,45,45,71,72,73,75)

# Number of bins
bins <- 5

# Create bin indices
bin_indices <- cut(data, bins)

# (a) Smoothing by Bin Mean
mean_smooth <- tapply(data, bin_indices, mean)
print(mean_smooth)

# (b) Smoothing by Bin Median
median_smooth <- tapply(data, bin_indices, median)
print(median_smooth)

# (c) Smoothing by Bin Boundaries
min_max_smooth <- tapply(data, bin_indices, function(x) c(min(x), max(x)))
print(min_max_smooth)
