A <- c(23,23,27,27,39,41,47,49,50,52,54,54,56,57,58,58,60,61)

F <- c(9.5,26.5,7.8,17.8,31.4,25.9,27.4,27.2,31.2,
       34.6,42.5,28.8,33.4,30.2,34.1,32.9,41.2,35.7)

# Mean
mean(A)
mean(F)

# Median
median(A)
median(F)

# Standard Deviation
sd(A)
sd(F)

# Boxplot
boxplot(A, F,
        names=c("Age","Fat"),
        main="Age and Body Fat",
        ylab="Values")

# Scatter Plot
plot(A, F,
     xlab="Age",
     ylab="% Fat",
     main="Scatter Plot")

# Q-Q Plot for Age
qqnorm(A)
qqline(A)

# Q-Q Plot for Fat
qqnorm(F)
qqline(F)

# Bar Graph - Mean
barplot(c(mean(A), mean(F)),
        names.arg=c("Age", "Body Fat"),
        main="Mean Age and Body Fat",
        xlab="Variables",
        ylab="Mean Value")