# Base R Plot 

# setup code
africadata <- read.csv("data/africadata.csv")

# Make a scatterplot of gdp_2017 vs. pop_2017



# update the plot labels to use words instead of the variable names;
# also add a title
# Hint: set xlab, ylab, and main





# change the plot marker (pch option) from an open circle to a filled square;
# color (color option) the square blue
# hint: see the chart at http://www.sthda.com/sthda/RDoc/figure/graphs/r-plot-pch-symbols-points-in-r.png






# The plot doesn't look great with the values on the axes in millions and billions.  
# Make two new variables on the africadata dataframe that divided population by 1 million and gdp by 1 billion 
# 1 billion is 1e9 in scientific notation in R, which you can use




# Now, plot your new variables instead.
# Also change the limits on the plot x axis to go from 0 to 50
# And we'll update the labels on the axes to indicate the units
# Fill in the blanks (____) below
plot(x=____, 
     y=____, 
     xlab="GDP 2017 (billion US$)", 
     ylab="Population 2017 (million people)",
     main="African Countries GDP and Population: 2017",
     xlim=c(___, ___))





