
# Q7. Mean, Median and Mode of Pencils

# Create a vector
pencils <- c(9, 25, 23, 12, 11, 6, 7, 8, 9, 10)

# Calculate Mean
mean(pencils)

# Calculate Median
median(pencils)

# Calculate Mode
mode <- names(table(pencils))[table(pencils) == max(table(pencils))]
print(mode)
