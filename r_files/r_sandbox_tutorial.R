# Opening The Library 
library(tidyverse)


#1 How to View Data

# Show the head (columns+rows) of the dataset
head(diamonds)

# Show the number of rows in each column
str(diamonds)

# Summarise total of columns and rows
glimpse(diamonds)

# Returns only the column names
colnames(diamonds)


#2 How to Clean Data

# Rename Columns & Variables
rename(diamonds, carat_new = carat)
# Seems like only renames for 1 command

# Summarise a wide range of data
summarize(diamonds, mean_carat = mean(carat))


#3 How to Visualise Data

# Visualise Columns in various types
ggplot(data = diamonds, aes(x = carat, y = price)) + geom_point()

# Add color to your visualisation
ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) + geom_point()
# Cut is also a column - that's how he was able to make it like this

# Split the information into various visuals 
ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) + geom_point() + facet_wrap(~cut)
# Here it was split up but the cut column 
# So each visual has its own color