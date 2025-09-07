library(AER)
data("STAR")
head(STAR)
write.csv(STAR, file = "star.csv", row.names = FALSE)
