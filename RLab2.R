#install date package
install.packages("lubridate")

#use library to load it into R every time
library("lubridate")

#using data sets
date1 <- c("4/2/2017", "6/19/2016", "8/10/2016", "6/2/2017",
           "3/16/2017", "11/5/2017")
date2 <- mdy(date1)
day(date2)
yday(date2)
year(date2)

#set.seed
set.seed(1)
x <- yday(date2)
x
y <- rnorm(6)
plot(y ~ x, type = "n", xlab = "Day of Year")
lines(x[order(x)], y[order(x)], xlim = range(x), ylim = range(y),
      pch = 16, col = "blue")


#writing custom functions
square <- function(x) {
  y <- x * x
  return(y)
}
square(2)

#if Commands
a <- 0 # Test with a = 0, 1, 2, and 3
if (a == 0) {
  b <- 1
} else {
  b <- 2
}
b

#for loops
sums <- numeric(0)
for (i in 1:10) {
  if (i == 8)
    break
  sums[i] <- sum(1:i)
}
sums
sum(sums)
mean(sums)

sentence <- c("Let", "the", "computer", "do", "the",
              "work")
for (word in sentence) {
  print(word)
}
