#load packages
library(ggplot2)
library(readr)
library(tidyverse)


#read data
data <- read_csv("data/mentions per year.csv")

#rename columns
colnames(data) <- c("Year", "Mentions")


#make graph

ggplot(data, aes(x = Year, y = Mentions)) +
  geom_line(color = "steelblue") +
  geom_point(color = "darkred") +
  labs(
    title = "Mentions of Tjernobyl per Year in Danish Media",
    x = "Year",
    y = "Number of Articles"
  ) +
  theme_minimal()

