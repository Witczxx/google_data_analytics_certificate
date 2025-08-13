### Install needed packages
install.packages("ggplot2")
library(ggplot2)
install.packages("skimr")
library(skimr)
### Import .csv file
hotel_bookings <- 
read.csv("/Users/patrick/files/data_analytics/csv_files/l3_aesthetics_hotel_bookings.csv")

### Preview Data
colnames(hotel_bookings)
head(hotel_bookings)
str(hotel_bookings)
glimpse(hotel_bookings)
skim_without_charts(hotel_bookings)

### Developing Promotion
### Based on different booking distributions
### How many transactions are occurring 
### For each different distribution type
### Please create a bar chart for it
ggplot(data=hotel_bookings) +
  geom_bar(mapping=aes(x=distribution_channel))


### Number of bookings for each distribution type 
### Different depending on 
### Whether what deposit represent or not
ggplot(data=hotel_bookings) +
  geom_bar(mapping=aes(x=distribution_channel, fill=deposit_type))
### Whether what market segment represent or not. 
ggplot(data=hotel_bookings) +
  geom_bar(mapping=aes(x=distribution_channel, fill=market_segment))

### Create separate charts 
### For each deposit type 
ggplot(data=hotel_bookings) +
  geom_bar(mapping=aes(x=distribution_channel, fill=deposit_type)) +
  facet_wrap(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45)) # Copy/Paste from Tutorial
### For each market segment
ggplot(data=hotel_bookings) +
  geom_bar(mapping=aes(x=distribution_channel, fill=market_segment)) +
  facet_wrap(~market_segment) +
  theme(axis.text.x = element_text(angle = 45)) # Copy/Paste from Tutorial
### Grid include empty plots, too! 
### We do the same, only using facet_grid()
### For each deposit type 
ggplot(data=hotel_bookings) +
  geom_bar(mapping=aes(x=distribution_channel, fill=deposit_type)) +
  facet_grid(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45)) # Copy/Paste from Tutorial
### For each market segment
ggplot(data=hotel_bookings) +
  geom_bar(mapping=aes(x=distribution_channel, fill=market_segment)) +
  facet_grid(~market_segment) +
  theme(axis.text.x = element_text(angle = 45)) # Copy/Paste from Tutorial
### Last one looks different!

### Putting deposit type & market segment together with facet_grid!
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type~market_segment) +
  theme(axis.text.x = element_text(angle = 45))
### ~ ~ - both are on the right side - so both horizontally