
### Installing Packages
install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")
library(tidyverse)
library(skimr)
library(janitor)

### Import Data
hotel_bookings <- read_csv("/Users/patrick/files/data_analytics/csv_files/l3_hotel_booking_change.csv")

### Previewing Data
colnames(hotel_bookings)
head(hotel_bookings)
str(hotel_bookings)
glimpse(hotel_bookings)
skim_without_charts(hotel_bookings)

### Arrange the data by "most lead time" to "least lead time"
# 2 Different Ways Of Doing
arrange(hotel_bookings, -lead_time)
arrange(hotel_bookings, desc(lead_time))
# SneakPeak - Preview
head(arrange(hotel_bookings, desc(lead_time)))
# Safe by creating a Variable
hotel_bookings_v2 <-
  arrange(hotel_bookings, desc(lead_time))
head(hotel_bookings_v2)

### Finding out "min_lead_time" and "max_lead_time"
### Without doing Changements on Variables
max(hotel_bookings$lead_time)
min(hotel_bookings$lead_time)
### We use a $ to specify here instead of " , "
### Finding The "mean_lead_time"
mean(hotel_bookings$lead_time)

### Find out average - only for city hotels
#### So 1st Filtering, 2nd Sorting
# Find out right column & number of unique values
skim_without_charts(hotel_bookings)
# Only 2 unique values - find the right name
head(arrange(hotel_bookings, desc(hotel)))
head(arrange(hotel_bookings, hotel))
# Name is: City Hotel
# Next: Create a Filter
city_hotel <- filter(hotel_bookings, hotel == "City Hotel") 
# Run The Average Function mean()
mean(city_hotel$lead_time)

### Maximum and Minimum lead time for city hotels
### Compare Results to Resort Hotels
### use group_by() and summarize()
hotel_bookings %>%
  group_by(hotel) %>% 
  summarize(
    avg_lead_time = mean(lead_time),
    max_lead_time = max(lead_time),
    min_lead_time = min(lead_time))

  