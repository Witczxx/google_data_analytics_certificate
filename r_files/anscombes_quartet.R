
### Installing Dataset-Package of Anscombe's quartet
install.packages("Tmisc")
library(Tmisc)
data(quartet)
View(quartet)

### Summary of Statistical Measures
### Based on Statistics they are all identical
quartet %>%
  group_by(set) %>%
  summarize(mean(x), sd(x), mean(y), sd(y), cor(x, y))

### Visualisation to show, it's not identical
### We will cover this coding chapter later on
ggplot(quartet,aes(x,y)) 
+ geom_point() 
+ geom_smooth(method=lm,se=FALSE) 
+ facet_wrap(set)

### Installing the datasauRus Package for Tmisc
install.packages("datasauRus")
library(datasauRus)

### Running the visualisation
### We will cover this coding chapter later on
ggplot(datasaurus_dozen,aes(x=x,y=y,colour=dataset)) + 
  geom_point() +
  theme_void() +
  theme(legend.position = "none") +
  facet_wrap(~dataset,ncol=3)