### Preparations
install.packages("ggplot2")
library(ggplot2)
install.packages("tidyverse")
library(tidyverse)
### Hotel Bookings "l3_filters_hotel.csv" is installed
View(hotel_bookings)
### Preview
colnames(hotel_bookings)
head(hotel_bookings)
str(hotel_bookings)
### Refresher for 1st hotel viz
ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = lead_time, y = children))

### group of guests who typically make early bookings
### many of these guests do not have children
### which market segments generate the largest number of bookings, 
### and where these bookings are made (city hotels or resort hotels). 
### bar chart showing each hotel type and market segment. 
### You use different colors to represent each market segment
ggplot(data=hotel_bookings) +
  geom_bar(mapping=aes(x=hotel, fill=market_segment)) +
  facet_wrap(~market_segment)

### relationship lead time & guests with children 
### for online bookings at city hotels
city_hotel_online <- 
  filter(hotel_bookings, 
         hotel == "City Hotel",
         market_segment == "Online TA")
ggplot(data = city_hotel_online) +
  geom_point(mapping=aes(x=lead_time,y=children))
### Families with children have a shorter lead_time