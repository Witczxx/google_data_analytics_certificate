# Load Tidyverse Package
install.packages("tidyverse")
library(tidyverse)

# Install Palmer Penguins Package
install.packages("palmerpenguins")
library(palmerpenguins)

# Sort Data by Bill Length in ascending order
penguins %>% 
  arrange(bill_length_mm)

# Sort Data by Bill Length in descending order
penguins %>% 
  arrange(-bill_length_mm)

# Safe the sorted data
penguins2 <- penguins %>% arrange(bill_length_mm)
view(penguins2)

# Grouping data by island - removing all N/A values
# Creating an average bill length for each island 
penguins %>% 
  group_by(island) %>% 
  drop_na() %>% 
  summarize(mean_bill_length_mm = mean(bill_length_mm))

# Grouping data by island - removing all N/A values
# Creating the maximal bill length for each island 
penguins %>% 
  group_by(island) %>% 
  drop_na() %>% 
  summarize(max_bill_length_mm = max(bill_length_mm))

# Combining the average length and maximum length
# This time sorted by island and by species (like in SQL)
# All within one Code
penguins %>% 
  group_by(species, island) %>% 
  drop_na() %>% 
  summarize(max_bl = max(bill_length_mm), mean_bl = mean(bill_length_mm))

# Filtering by a certain species 
# So filtering by a Row Name
penguins %>% 
  filter(species == "Adelie")


