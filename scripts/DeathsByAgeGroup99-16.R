#In case you don't have them:
#install.packages("ggplot2", "gganimate")

library(ggplot2)
library(gganimate)

#data import — I've already cleaned it up slightly.
#original data from CDC WONDER, https://wonder.cdc.gov/mcd.html
deaths <- read.csv("../data/DeathsByAgeGroup99-16.csv")

p <- ggplot(deaths, aes(x=Age.Group, y=Crude.Rate, frame = Year)) + geom_col(position = "dodge")
p <- p + theme_bw() + labs(x="Age Group", y = "Drug Overdose Deaths per 100,000 pop.", title = "Year:")
gganimate(p, ani.width = 693, ani.height = 444, filename = "../img/DeathsByAgeGroup99-16.gif")