install.packages("maps")
library("maps")
library("ggplot")




election %>% select(state, total_vote,
                    r_points, pct_trump, party, census) %>%
  sample_n(5)
## # A tibble: 5 x 6
##   state          total_vote r_points pct_trump party      census   
##   <chr>               <dbl>    <dbl>     <dbl> <chr>      <chr>    
## 1 Kentucky          1924149     29.8      62.5 Republican South    
## 2 Vermont            315067    -26.4      30.3 Democrat   Northeast
## 3 South Carolina    2103027     14.3      54.9 Republican South    
## 4 Wyoming            255849     46.3      68.2 Republican West     
## 5 Kansas            1194755     20.4      56.2 Republican Midwest


party_colors <- c("#2E74C0", "#CB454A") 

p0 <- ggplot(data = subset(election, st %nin% "DC"),
             mapping = aes(x = r_points,
                           y = reorder(state, r_points),
                           color = party))

p1 <- p0 + geom_vline(xintercept = 0, color = "gray30") +
  geom_point(size = 2)

p2 <- p1 + scale_color_manual(values = party_colors)

p3 <- p2 + scale_x_continuous(breaks = c(-30, -20, -10, 0, 10, 20, 30, 40),
                              labels = c("30\n (Clinton)", "20", "10", "0",
                                         "10", "20", "30", "40\n(Trump)"))

p3 + facet_wrap(~ census, ncol=1, scales="free_y") +
  guides(color=FALSE) + labs(x = "Point Margin", y = "") +
  theme(axis.text=element_text(size=8))
library(maps)
us_states <- map_data("state")
head(us_states)
##       long     lat group order  region subregion
## 1 -87.4620 30.3897     1     1 alabama      <NA>
## 2 -87.4849 30.3725     1     2 alabama      <NA>
## 3 -87.5250 30.3725     1     3 alabama      <NA>
## 4 -87.5308 30.3324     1     4 alabama      <NA>
## 5 -87.5709 30.3267     1     5 alabama      <NA>
## 6 -87.5881 30.3267     1     6 alabama      <NA>
dim(us_states)
## [1] 15537     6



