incarceration <- read.csv(file = 'https://raw.githubusercontent.com/vera-institute/incarceration-trends/master/incarceration_trends.csv')
library(leaflet)
library(tidyverse)
library(ggmap)
library(leaflet.extras)
library(maps)
library(leaflet)
library(ggplot2)
library(mapdata)
library(mapproj)
library(htmltools) 
library(hrbrthemes)
install.packages("hrbrthemes")

chart <- read.csv("https://raw.githubusercontent.com/vera-institute/incarceration-trends/master/incarceration_trends.csv")
chart$State <- as.Date(chart$State)

chart %>% 
  ggplot(aes(x =state, y=black_jail_pop)) + 
  geom_line(color = 'pink') +
  ylim(0,2000) + 
  theme_ipsum()



