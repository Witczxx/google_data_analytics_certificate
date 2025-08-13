# Tidyverse
install.packages("tidyverse")
library(tidyverse)

# Importing a .csv File
booking_df <- read_csv("/Users/patrick/files/data_analytics/csv_files/l2_hotel_bookings.csv")
booking_df

# Look at the Data
View(booking_df)
head(booking_df)
str(booking_df)
colnames(booking_df)

# Separate a view columns
new_df <- select(booking_df, adr, adults)
new_df

# Create a new Variable
mutate(new_df, total = `adr` / adults)

