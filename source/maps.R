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


County <- ("https://raw.githubusercontent.com/vera-institute/incarceration-trends/master/incarceration_trends.csv")
County_level_csv <- read.csv(County, header = TRUE)
View(County_level_csv)


s <- map_data('state')
ggplot(s, aes(x = long, y = lat, group = group) ) + 
  geom_polygon(color = 'pink') + 
  coord_map('polyconic')







