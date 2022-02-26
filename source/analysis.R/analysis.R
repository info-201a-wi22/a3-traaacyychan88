

#loading pacakges 
install.packages("tidyverse")
install.packages("dplyr")
library("dplyr")
library("tidyr")
library("ggplot2")
library("tidyverse")


County <- ("https://raw.githubusercontent.com/vera-institute/incarceration-trends/master/incarceration_trends.csv")
County_level_csv <- read.csv(County, header = TRUE)
View(County_level_csv)


# Variable 1 : Total Number of Black Male Incarceration county level. 
total_black_male <- County_level_csv %>%
  filter(black_jail_pop == max(black_jail_pop,na.rm = TRUE)) %>%
  pull(black_jail_pop)

#Variable 2 : Total Number of White Male Incarceration
total_white_male <- County_level_csv %>%
  filter(white_jail_pop == max(white_jail_pop,na.rm = TRUE)) %>%
  pull(white_jail_pop)
 
#Variable 3: Total Number of Female Incarceration
total_female_pop <- County_level_csv %>%
  filter(female_jail_pop == max(female_jail_pop,na.rm = TRUE)) %>%
  pull(female_jail_pop)

#Sub Variable : Total Number of Male Incarceration
total_male_pop <- County_level_csv %>%
  filter(male_jail_pop == max(male_jail_pop,na.rm = TRUE)) %>%
  pull(male_jail_pop)

#Variable 4 : State with highest Black Incarceration 
highest_black_pop <- County_level_csv %>%
  drop_na()%>%
  filter(black_jail_pop == max(black_jail_pop))%>%
  pull(state)

#Sub variable: State with the highest White Incarceration
highest_white_pop <- County_level_csv %>%
  drop_na()%>%
  filter(white_jail_pop == max(white_jail_pop))%>%
  pull(state)

#Variable 5: Total Number of Black Female Incarceration in TX State 
black_incarceration_tx <- County_level_csv %>%
  drop_na() %>%
  filter(state =="TX")%>%
  filter(black_female_prison_pop == max(black_female_prison_pop))%>%
  pull(black_female_prison_pop)


  #Sub Variable: Total Number of White Female Incarceration in TX State 
white_female_incarceration_tx <- County_level_csv %>%
  drop_na() %>%
  filter(state =="TX")%>%
  filter(white_female_prison_pop == max(white_female_prison_pop))%>%
  pull(white_female_prison_pop)

