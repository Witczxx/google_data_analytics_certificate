install.packages("tidyverse")
library(tidyverse)

# Create Vector 1
names <- c("patrick", "jing", "asia", "andrzej")

# Create Vector 2
age <- c(27, 27, 49, 50)

# Create a Dataframe out of Vector 1 & 2
people <- data.frame(names, age)

# Check out the Database
View(people)
head(people)
glimpse(people)
str(people)
colnames(people)

# Work with the database
mutate(people, age_in_20 = age + 20)



# Exercise with Fruits
Fruits <- c("Apple", "Banana", "Kiwi", "Orange", "Melon" )
Ranking <- c(2, 1, 3, 4, 3)
Fruit_Ranking <- data.frame(Fruits, Ranking)
View(Fruit_Ranking)
head(Fruit_Ranking)
str(Fruit_Ranking)
glimpse(Fruit_Ranking)
mutate(Fruit_Ranking, Ranking_new = Ranking + 2)

