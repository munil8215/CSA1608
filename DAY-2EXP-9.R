# Create sample data for tennis players
tennis_players <- data.frame(
  Player = c("Player1", "Player2", "Player3", "Player4",
             "Player5", "Player6", "Player7", "Player8",
             "Player9", "Player10"),
  Score = c(45, 50, 55, 60, 62, 65, 68, 70, 72, 150)
)

# Display the dataset
print(tennis_players)

# Create boxplot
boxplot(tennis_players$Score,
        main = "Tennis Players' Performance",
        xlab = "Tennis Players",
        ylab = "Performance Score",
        col = "lightblue",
        border = "black")

# Identify outliers
outliers <- boxplot.stats(tennis_players$Score)$out

cat("Outliers in tennis players' performance:\n")
print(outliers)