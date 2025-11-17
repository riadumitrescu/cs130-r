set.seed(123)

n <- 200
X1 <- 1:n
X2 <- runif(n, 0, 1)
X3 <- rnorm(n, 0, 1)

a <- 10
b <- 30
c <- -8
epsilon <- rnorm(n, 0, 50)

Y <- a*X1 + b*X2 + c*X3 + epsilon

dat <- data.frame(Y, X1, X2, X3)

set.seed(42)
train_index <- sample(1:n, n/2)   # pick 100 random rows
half_data <- dat[train_index, ]   # keep only this half

write.csv(half_data, file = "half_data.csv", row.names = FALSE)

getwd()
