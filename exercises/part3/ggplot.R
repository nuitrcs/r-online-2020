# ggplot2 Exercises

# We're using ggplot2:
library(ggplot2)

# Use the ggplot cheatsheetto help you: 
# In RStudio: Help menu > Cheatsheets > Data Visualization with ggplot2 will download the pdf cheatsheet

# If you don't have the penguins data package installed from day 2, 
# uncomment the lines below and run them before proceeding

#install.packages("remotes")
#remotes::install_github("allisonhorst/palmerpenguins")

# load the data
library(palmerpenguins) 

data("penguins")

# Remember the variable names by printing the names
# Information on the variables: https://github.com/allisonhorst/palmerpenguins
names(penguins)


# Make a scatterplot of bill length vs. depth
ggplot(penguins, aes(x=___, y=___)) + 
  ___()


# Color the points by species by setting the color in aes()
ggplot(penguins, aes(x=___, y=___, color=___)) + 
  ___()


# Clean up the plot labels and add a title
ggplot(penguins, aes(x=___, y=___, color=___)) + 
  ___() + 
  labs(title=___,
       x=___,
       y=___)


# Now, to help us compare differences in bill depth across species, make a 
# boxplot of bill_depth_mm by species.




# Do the same for bill length





# Finally, make a histogram of body_mass_g
# The warning message you will get is OK; you can resolve it by setting the bins 
# argument to the geom function




# and then facet the histogram by species:
ggplot(___) + 
  ___ + 
  facet_grid(___ ~ .)


