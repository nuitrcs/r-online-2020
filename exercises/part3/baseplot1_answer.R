# Base R Plot Answers

# setup code
africadata <- read.csv("data/africadata.csv")

# Make a scatterplot of gdp_2017 vs. pop_2017
plot(pop_2017 ~ gdp_2017, data=africadata)

# alternative
plot(x=africadata$gdp_2017, y=africadata$pop_2017)

# update the plot labels to use words instead of the variable names;
# also add a title
plot(pop_2017 ~ gdp_2017, data=africadata,
     xlab="GDP 2017", ylab="Population 2017",
     main="African Countries GDP and Population: 2017")

# change the plot marker (pch option) from an open circle to a filled square;
# color (color option) the square blue
# hint: see the chart at http://www.sthda.com/sthda/RDoc/figure/graphs/r-plot-pch-symbols-points-in-r.png
plot(pop_2017 ~ gdp_2017, data=africadata,
     xlab="GDP 2017", ylab="Population 2017",
     main="African Countries GDP and Population: 2017",
     pch=15, col="blue")

# The plot doesn't look great with the values on the axes in millions and billions.  
# Make two new variables on the africadata dataframe that divided population by 1 million and gdp by 1 billion 
# 1 billion is 1e9 in scientific notation in R, which you can use
africadata$pop_2017_mil <- africadata$pop_2017 / 1e6
africadata$gdp_2017_bil <- africadata$gdp_2017 / 1e9


# Now, change the limits on the plot x axis to go from 0 to 50
# And we'll update the labels on the axes to indicate the units
# Fill in the blanks (____) below
plot(x=africadata$gdp_2017_bil, 
     y=africadata$pop_2017_mil, 
     xlab="GDP 2017 (billion US$)", 
     ylab="Population 2017 (million people)",
     main="African Countries GDP and Population: 2017",
     xlim=c(0, 50))





