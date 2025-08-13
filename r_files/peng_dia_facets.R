### Installing needed packages
library(ggplot2)
library(palmerpenguins)

### Using Facet-Functions 
### facet_wrap: Dividing 1 Column into Subsets
### For Penguins
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))+ 
  geom_point(aes(color=species))+ 
  facet_wrap(~species)
### For Diamonds
ggplot(data=diamonds) +
  geom_bar(mapping=aes(x=color, fill=cut)) +
  facet_wrap(~cut)
### Interesting that we used x = color
### Ahh - color is probably a column in the table
### know your data well !!!

### Using facet-Functions
### facet_grid: Dividing 2+ Columns into Subsets
### For Penguins
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g))+ 
  geom_point(aes(color=species))+ 
  facet_grid(sex~species)


a