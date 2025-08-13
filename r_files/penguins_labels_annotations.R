# Preparing Libraries
library(ggplot2)
library(palmerpenguins)

### Adding a Title to a plot
ggplot(data=penguins) +
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species)) +
  labs(title="Palmer Penguins: Body Mass vs Flipper Length",
       subtitle="Sample of Three Penguin Species",
       caption="Data collected by Dr. Kirsten Gorman") +
  annotate("text",x=218,y=3500,
           label="The Gentoos are the largest", 
           color="blue",
           fontface="bold",
           size=4.5,
           angle=25)

### Make your code shorter with annotations
p <- ggplot(data=penguins) +
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g,color=species)) +
  labs(title="Palmer Penguins: Body Mass vs Flipper Length",
       subtitle="Sample of Three Penguin Species",
       caption="Data collected by Dr. Kirsten Gorman")

### Now you just need to use p for styling
p +   annotate("text",x=218,y=3500,
               label="The Gentoos are the largest", 
               color="purple",
               fontface="bold",
               size=4.5,
               angle=25)
