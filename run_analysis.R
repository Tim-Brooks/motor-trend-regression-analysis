data(mtcars)
library(ggplot2)
library(knitr)

plot <- function() {
  p <- ggplot(mtcars, aes(wt, mpg))  + geom_point(aes(colour = factor(am)))
  p
}

prep_data <- function() {
  data <- mtcars
  data$am <- as.factor(data$am)
  data
}