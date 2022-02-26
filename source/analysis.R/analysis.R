

#loading pacakges 
library("dplyr")
library("tidyr")
library("ggplot2")



County <- ("https://raw.githubusercontent.com/vera-institute/incarceration-trends/master/incarceration_trends.csv")
County_level_cvs <- read.csv(County, header = TRUE)
View(County_level_cvs)

Juristic <- ("https://raw.githubusercontent.com/vera-institute/incarceration-trends/master/incarceration_trends_jail_jurisdiction.csv")
Juristic_level_cvs <- read.csv(Juristic, header = TRUE)
View(Juristic_level_cvs)

# Variable 1 : Total Number of Black Male Incarnations county level. 



#Variable 2 : Total Number of White Male Incarnations 

#Variable 3: Total Number of Female Incarnations 

#Variable 4 :Total Number of Native Incarnations in the South

#Variable 5 Total Number of Hispanic Male Incarnations


#Variable Comparison  : 

#Map 
#I chose to compare black males population in