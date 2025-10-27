#Dataset
data("mtcars", package = "datasets")
head(mtcars)

#1.Base R Graphics
#Scatter Plot
plot(mtcars$wt, mtcars$mpg,
     main = "Base R: MPG vs. Weight",
     xlab = "Weight (1000 lbs)",
     ylab = "Miles per Gallon")

#2. Lattice Graphics
library(lattice)
# Conditional scatter plot
xyplot(mpg ~ wt | factor(cyl),
       data = mtcars,
       main = "Lattice: MPG vs Weight by Cylinder")

#3. ggplot2
library(ggplot2)
# Scatter plot with smoothing
ggplot(mtcars, aes(x = wt, y = mpg, color = factor(cyl))) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(title = "ggplot2: MPG vs Weight by Cylinder")

Blog Link: r-programming-omareltannir.blogspot.com
