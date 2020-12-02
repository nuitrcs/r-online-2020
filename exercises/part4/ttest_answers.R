# t-test Exercise Answers

# If you don't have the penguins data package installed from previous exercises,
# uncomment the line below and run it to install

#install.packages("palmerpenguins")

# load the data
library(palmerpenguins) 


# Remember the variable names by printing the names
# Information on the variables: https://github.com/allisonhorst/palmerpenguins
names(penguins)


# We want to know: Do different types of penguin species have different average bill lengths and depths?


# To start, what are the species of penguins?  Make a table of the species variable
table(penguins$species)


# Look at bill length first.  Let's just look at Chinstrap and Gentoo penguins.  
# What is the average bill length for each of these two species?
# Hint: there are missing values, so you need to include na.rm=TRUE
mean(penguins$bill_length_mm[penguins$species == "Chinstrap"], na.rm=TRUE)
mean(penguins$bill_length_mm[penguins$species == "Gentoo"], na.rm=TRUE)


# We could also use the tapply function to compute the mean for each group:
tapply(X=penguins$bill_length_mm, 
       INDEX=penguins$species, 
       FUN=mean, na.rm=TRUE)

# The averages are pretty similar.  
# Let's test if they are statistically different with a t-test:
t.test(penguins$bill_length_mm[penguins$species == "Chinstrap"],
       penguins$bill_length_mm[penguins$species == "Gentoo"])

# What do you conclude from the test?
# Yes, the averages are different with a p-value of 0.0077

# Now, what about the bill depth?  Again, just look at Chinstrap and Gentoo.
# Compute the means first
mean(penguins$bill_depth_mm[penguins$species == "Chinstrap"], na.rm=TRUE)
mean(penguins$bill_depth_mm[penguins$species == "Gentoo"], na.rm=TRUE)


# Then run a t-test
t.test(penguins$bill_depth_mm[penguins$species == "Chinstrap"],
       penguins$bill_depth_mm[penguins$species == "Gentoo"])



# Bonus question: Does Adelie penguin body mass differ by island?  

# Make a subset of the data with rows just for Adelie penguins:
adelie <- penguins[penguins$species == "Adelie", ]


# Using adelie and the tapply() function, compute the mean body_mass_g per island
tapply(adelie$body_mass_g, adelie$island, mean, na.rm=TRUE)


# Does the mass of penguins on Biscoe and Torgersen islands differ?
t.test(adelie$body_mass_g[adelie$island == "Biscoe"],
       adelie$body_mass_g[adelie$island == "Torgersen"])

# not a statistically significant difference


