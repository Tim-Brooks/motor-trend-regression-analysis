data(mtcars)
library(ggplot2)

plot <- function() {
  p <- ggplot(mtcars, aes(wt, mpg))  + geom_point(aes(colour = factor(am)))
  p
}
