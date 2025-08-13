### Installing needed Packages
install.packages("ggplot2")
library(ggplot2)
library(tidyverse)


### Importing Hotel-File
hotel_bookings <- read.csv("DONE")

### Preview Data
colnames(hotel_bookings)
head(hotel_bookings)
glimpse(hotel_bookings)
str(hotel_bookings)
skim_without_charts(hotel_bookings)

### share  visualization breaking down payment type by city
### create a cleaned and labeled version and save it as a .png file
## 01 - The Viz itself
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel)

### 01 - Adding a Title
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  labs(title="Bookings divided by Market Segments for 2 Hotel Types")

### 02 - Adding a subtitle with a date
### Variables Needed
mindate <- min(hotel_bookings$arrival_date_year)
maxdate <- max(hotel_bookings$arrival_date_year)
### Pre-Saving our existing code
viz_basic <- ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  labs(title="Bookings divided by Market Segments for 2 Hotel Types")
### Integrating Subtitle, all varibales, into Code
viz_basic + 
  labs(caption=paste("Date: From", mindate, "to", maxdate))
### Changing Descriptions for x- and y-axis
viz_basic + 
  labs(caption=paste("Date: From", mindate, "to", maxdate),
       x = "Payment Type", y = "Number of Bookings")
ggsave("/Users/patrick/files/data_analytics/hotel_bookings_chart.png")


