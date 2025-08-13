### Install needed packages
install.packages("ggplot2")
library(ggplot2)

### Import the .csv file of the hotel
hotel_bookings <- 
  read.csv("/Users/patrick/files/data_analytics/csv_files/l2_hotel_ggplot.csv")

### Preview the data
View(hotel_bookings)
colnames(hotel_bookings)
head(hotel_bookings)
str(hotel_bookings)
### Not in our package
glimpse(hotel_bookings)
skim_without_charts(hotel_bookings)

### Target people who book early
### Hypothesis Test:
### People with children have to book in advance.
ggplot(data = hotel_bookings) +
  geom_point(mapping=aes(
    x = lead_time,
    y = children))
### People without children might book earlier.

### We want to increase weekend bookings
### What group of guests book the most weekend nights?
### Guests without children mostly book weekends
### stay_in_weekend_nights, children
ggplot(data = hotel_bookings) +
  geom_point(mapping=aes(
    x = stays_in_weekend_nights,
    y = children))