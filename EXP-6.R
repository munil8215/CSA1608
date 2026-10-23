# Input Data
v <- c(23, 23, 27, 27, 39, 41, 47, 49, 50,
       52, 54, 54, 56, 57, 58, 58, 60, 61)

# (i) Min-Max Normalization
min <- 0
max <- 1

min_max <- ((35 - min(v)) / (max(v) - min(v)))
print(min_max)

# (ii) Z-Score Normalization
m <- mean(v)
s <- 12.94

z_score <- (35 - m) / s
print(z_score)

# (iii) Decimal Scaling Normalization
m <- 35
j <- 0

while (m / (10^j) >= 1) {
  j <- j + 1
}

decimal_scaling <- m / (10^j)
print(decimal_scaling)
