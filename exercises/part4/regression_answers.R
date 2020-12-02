# Regression Answers

# If you don't have the penguins data package installed from previous exercises,
# uncomment the line below and run it to install

#install.packages("palmerpenguins")

# load the data
library(palmerpenguins) 


# Remember the variable names by printing the names
# Information on the variables: https://github.com/allisonhorst/palmerpenguins
names(penguins)


# We want to know: Can we predict/explain penguin body mass with the variables we have?

# Run a linear regression with body_mass_g as the dependent variable and 
# species, bill_length_mm, bill_depth_mm, flipper_length_mm, and sex as the independent variables
reg1 <- lm(body_mass_g ~ species + bill_length_mm + bill_depth_mm + 
             flipper_length_mm + sex, data=penguins)

# Look at the results of the regression with the summary function
summary(reg1)

# Notice in the summary output that obserations (rows) with missing data were automatically
# removed from the analysis

# Plot the regression object to see a series of diagnostic plots
plot(reg1)


# Fit overall is pretty good.  The model above made Adelie penguins the base case, 
# and generated other indicator variables for the other species and gender.  
# To make a separate intercept for each species instead, add a -1 to the 
# formula you ran before; summarize the results again
reg2 <- lm(body_mass_g ~ -1 + species + bill_length_mm + bill_depth_mm + 
             flipper_length_mm + sex, data=penguins)

summary(reg2)


# If we look at the coefficients for the two models, you can see the coefficients 
# for species were the only ones to change
reg1$coefficients
reg2$coefficients


# Now, maybe the combination of bill length and depth also matters for body mass.
# So let's include an interaction term between the two bill variables.
# Hint: multiple two variables together to include them indpendently in the model and 
# have an interaction term automatically generated
reg3 <- lm(body_mass_g ~ -1 + species + sex+ flipper_length_mm + 
             bill_length_mm*bill_depth_mm, data=penguins)

summary(reg3)

# Looks like that is important.  

# Let's use our model to predict the body mass for a new penguin.
# To predict, we need a data frame with the same column names as our original data.
newdata <- data.frame(species="Adelie",
                      sex="female",
                      # set other variables to mean for Adelie penguins
                      flipper_length_mm=mean(penguins$flipper_length_mm[
                        penguins$species=="Adelie"], na.rm=TRUE),
                      bill_length_mm=mean(penguins$bill_length_mm[
                        penguins$species=="Adelie"], na.rm=TRUE),
                      bill_depth_mm=mean(penguins$bill_depth_mm[
                        penguins$species=="Adelie"], na.rm=TRUE))

# The predict function will automatically make the indicator and interaction variables for us.
# Hint: look at the help for predict.lm (what gets called since we have an lm model)
# to see the order of the arguments it expects
predict(reg3, newdata)

# Is the predicted body mass in the range we might expect for Adelie penguins?
mean(penguins$body_mass_g[penguins$species=="Adelie"], na.rm=TRUE)

# Yes, seems reasonable

# What's the confidence interval on the prediction?
# We use the prediction interval type because we want to know the expected 
# range for the mass of individual penguins, not the variability in the 
# expected value of the mean mass of penguins with these characteristics.
predict(reg3, newdata, interval="prediction")



