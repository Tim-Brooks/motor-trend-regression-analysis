data(mtcars)
library(ggplot2)
library(knitr)

plot <- function(data) {
  p <- ggplot(data, aes(wt, mpg))  + geom_point(aes(colour = factor(automatic)))
  p
}

prep_data <- function() {
  data <- mtcars
  data$am <- as.factor(data$am)
  data$automatic <- data$am == "0"
  data
}