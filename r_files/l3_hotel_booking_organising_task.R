# Installing all needed packages
install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")
library(tidyverse)
library(skimr)
library(janitor)

# Importing Data
bookings_df <- read_csv("/Users/patrick/files/data_analytics/csv_files/l3_hotel_bookings.csv")

# View Data
View(bookings_df)
head(bookings_df)
str(bookings_df)
glimpse(bookings_df)
skim_without_charts(bookings_df)

# We only need the columns 'hotel', 'is_canceled', and 'lead_time'.
trimmed_df <- select(bookings_df, hotel, is_canceled, lead_time)

# Rename the variable 'hotel' to be named 'hotel_type'
# Without Pipe
rename(select(bookings_df, hotel, is_canceled, lead_time), "hotel_type" = hotel)
# With Pipe
trimmed_df %>% 
  select(hotel, is_canceled, lead_time) %>% 
  rename("hotel_type" = hotel)
                        
# Combining two columns with each other
# arrival month and year
# With Pipe
example_df <- bookings_df %>% 
  select(arrival_date_year, arrival_date_month) %>% 
  unite(arrival_month_year, c("arrival_date_year", "arrival_date_month"), sep=" ")
# Without Pip
example_2_df <- unite(select(bookings_df, arrival_date_year, arrival_date_month), 
                      arrival_month_year, c("arrival_date_year", "arrival_date_month"), 
                      sep=" "
                      )

# We can also unite things with mutate()
# Creating new column, where adults, children and babies are united
example_3_df <- bookings_df %>% 
  select(adults, children, babies) %>% 
  mutate(all_guests = adults + children + babies)

# New column 'number_canceled' - represent  total number of canceled bookings
# New column 'average_lead_time' - represent the average lead time
example_4_df <- bookings_df %>% 
  select(is_canceled, lead_time) %>% 
  summarize(mean_lead_time = mean(lead_time),
            sum_num_canceled = sum(is_canceled)
            )