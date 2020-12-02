# hist() Answers

# read in the safi data, then do the tasks below
safi <- read.csv("data/SAFI_clean.csv", 
                 na = c("", "NULL", "NA"))

# Make a histogram with the hist() function of the years_liv variable in the safi data
hist(safi$years_liv)


# Change the number of bins in the histogram to 20
hist(safi$years_liv, breaks = 20)


# Fill in the bars with gray; remember you can use color names in quotes as one way to specify colors.
hist(safi$years_liv, breaks=20, col="gray")


# Change the title and axis labels of the plot to more reasonable values
hist(safi$years_liv, breaks=20, col="gray",
     main="Distribution of Years Lived in House",
     xlab="Years", ylab="Number of Respondents")


# Now make a histogram on your own of another variable in the safi dataset, and change the number of bins.
# Remember, histograms are for continuous variables.
# For categorical variables, you use a bar plot.
hist(safi$no_membrs, breaks=5)


# Bonus: barplot() is the function for a bar plot.  But you need to count how many of each value exists first.
# You can do this with the table function:
table(safi$village)
barplot(table(safi$village))
