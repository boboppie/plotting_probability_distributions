# Plotting Normal Distribution using ggplot2
# Reference: http://blog.revolutionanalytics.com/2012/09/how-to-use-your-favorite-fonts-in-r-charts.html

library(ggplot2)

exp_text <- "italic(y == frac(1, sqrt(2 * pi)) * e ^ {-frac(x^2, 2)} )"

p <- ggplot(data.frame(x=c(-3,3)), aes(x=x)) + ggtitle("Normal Distribution") +
  stat_function(fun=dnorm, geom="line") +
  theme_bw() +
  theme(text=element_text(family="CM Roman")) +
  annotate("text", x=0, y=0.1, label=exp_text, parse=TRUE, family="CM Roman")