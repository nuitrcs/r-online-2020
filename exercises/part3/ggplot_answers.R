# ggplot2 Answers

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
ggplot(penguins, aes(x=bill_length_mm, y=bill_depth_mm)) + 
  geom_point()


# Color the points by species by setting the color in aes()
ggplot(penguins, aes(x=bill_length_mm, y=bill_depth_mm, color=species)) + 
  geom_point()


# Clean up the plot labels and add a title
ggplot(penguins, aes(x=bill_length_mm, y=bill_depth_mm, color=species)) + 
  geom_point() + 
  labs(title="Bill Characteristics by Penguin Species",
       x="Length (mm)",
       y="Depth (mm)")


# Now, to help us compare differences in bill depth across species, make a 
# boxplot of bill_depth_mm by species.
ggplot(penguins, aes(x=species, y=bill_depth_mm)) + 
  geom_boxplot()


# Do the same for bill length
ggplot(penguins, aes(x=species, y=bill_length_mm)) + 
  geom_boxplot()


# Finally, make a histogram of body_mass_g
# The warning message you will get is OK; you can resolve it by setting the bins 
# argument to the geom function
ggplot(penguins, aes(body_mass_g)) + 
  geom_histogram(bins = 50)


# and then facet the histogram by species:
ggplot(penguins, aes(body_mass_g)) + 
  geom_histogram(bins = 50) + 
  facet_grid(species ~ .)


