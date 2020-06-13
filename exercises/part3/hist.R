# hist() Exercises

# read in the safi data, then do the tasks below
safi <- read.csv("data/SAFI_clean.csv", 
                 na = c("", "NULL", "NA"),
                 stringsAsFactors = FALSE)   # for R version >= 4.0, stringsAsFactors = FALSE is the default

# Make a histogram with the hist() function of the years_liv variable in the safi data
hist(___)


# Change the number of bins in the histogram to 20
hist(___, breaks = ___)


# Fill in the bars with gray; remember you can use color names in quotes as one way to specify colors.
hist(___, breaks=___, col=___)


# Change the title and axis labels of the plot to more reasonable values
hist(___, breaks=___, col=___,
     main=___,
     xlab=___, 
     ylab=___)


# Now make a histogram on your own of another variable in the safi dataset, and change the number of bins.
# Remember, histograms are for continuous variables.
# For categorical variables, you use a bar plot.



