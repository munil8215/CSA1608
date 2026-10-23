# Q9. Equal-Frequency and Equal-Width Partitioning

# Input Data
marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58,
           59, 61, 63, 65, 67, 71, 72, 75)

# Number of bins
num_bins <- 3

# (a) Equal-Frequency (Equi-Depth) Partitioning
bins_eq_frequency <- cut(marks, breaks = num_bins, labels = FALSE)

hist(marks,
     breaks = num_bins,
     col = "lightblue",
     xlab = "Marks",
     main = "Equal-Frequency (Equi-Depth) Partitioning")

# Smoothing by Bin Mean
bin_mean <- tapply(marks, bins_eq_frequency, mean)
smoothed_data_by_mean <- unname(
  bin_mean[as.character(bins_eq_frequency)]
)

# Smoothing by Bin Median
bin_median <- tapply(marks, bins_eq_frequency, median)
smoothed_data_by_median <- unname(
  bin_median[as.character(bins_eq_frequency)]
)

# Smoothing by Bin Boundaries
bin_boundaries <- tapply(
  marks, bins_eq_frequency,
  function(x) c(min(x), max(x))
)

smoothed_data_by_boundaries <- unlist(
  lapply(bins_eq_frequency, function(b) {
    values <- marks[bins_eq_frequency == b]
    boundaries <- c(min(values), max(values))
    values[which.min(abs(values - boundaries))]
  })
)

# Display Results
print("Original data:")
print(marks)

print("Smoothed data by bin mean:")
print(smoothed_data_by_mean)

print("Smoothed data by bin median:")
print(smoothed_data_by_median)

print("Smoothed data by bin boundaries:")
print(smoothed_data_by_boundaries)


# (b) Equal-Width Partitioning
equal_width_bins <- cut(marks, breaks = num_bins, labels = FALSE)

hist(marks,
     breaks = num_bins,
     col = "lightgreen",
     xlab = "Marks",
     main = "Equal-Width Partitioning")

print("Equal-width bin assignments:")
print(equal_width_bins)