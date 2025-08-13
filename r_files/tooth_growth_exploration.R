# Opening the Dataset
data(ToothGrowth)

# Looking into the Dataset
View(ToothGrowth)

# Using our first filter function
filtered_tg <- filter(ToothGrowth, dose == 0.5)
view(filtered_tg)

# Sorting our data (automatic descending)
arrange(filtered_tg, len)

# Using a nested function (does the same)
arrange(filter(ToothGrowth, dose == 0.5), len)
# Filters the data first
# Then rearranges it

# Create a Pipe
# CMD + Shift + M - %>%
# A pipe automatically applies dataset to each step
filtered_toothgrowth <- TcoothGrowth %>% 
  filter(dose == 0.5) %>% 
  arrange(len)

# Filtering which supplememts have with TG on average
filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose == 0.5) %>% 
  group_by(supp) %>% 
  summarize(mean_len = mean(len, na.rm = T), .group = "drop")

# Rules to keep in mind using pipes
# Add pipe operator at end o line of piped operation except the last one
# Check your code after you've programmed your pipe