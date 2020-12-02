# t-test Exercise

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



# Look at bill length first.  Let's just look at Chinstrap and Gentoo penguins.  
# What is the average bill length for each of these two species?
# Hint: there are missing values, so you need to include na.rm=TRUE
___(penguins$___[penguins$___ == "Chinstrap"], na.rm=TRUE)
___(penguins$___[penguins$___ == "Gentoo"], na.rm=TRUE)


# We could also use the tapply function to compute the mean for each group:
tapply(X=penguins$bill_length_mm, 
       INDEX=penguins$species, 
       FUN=mean, na.rm=TRUE)

# The averages are pretty similar.  Let's test if they are statistically different with a t-test:
t.test(penguins$___[penguins$___ == "Chinstrap"],
       penguins$___[penguins$___ == "Gentoo"])

# What do you conclude from the test?
# Yes, the averages are different with a p-value of 0.0077

# Now, what about the bill depth?  Again, just look at Chinstrap and Gentoo.
# Compute the means first




# Then run a t-test





# Bonus question: Does Adelie penguin body mass differ by island?  

# Make a subset of the data with rows just for Adelie penguins:
adelie <- penguins[___, ]


# Using adelie and the tapply() function (see above), compute the mean body_mass_g per island



# Does the mass of penguins on Biscoe and Torgersen islands differ?









