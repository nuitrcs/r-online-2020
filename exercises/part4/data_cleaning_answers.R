# Data Cleaning Answers

# You want to use some data in a table on wikipedia to compute
# the average per capita gdp by US region

# There's code to retrieve the data below.  You need to clean it
# and compute regional averages.

# Note: this exercise requires you to use new functions 
# you probably haven't seen yet.  It's a mini example of 
# a real data analysis task


# install.packages("rvest")

library(rvest)

# Pull data from this wikipedia page:

url <- "https://en.wikipedia.org/wiki/List_of_states_and_territories_of_the_United_States_by_GDP"

page_html <- read_html(url)
tables <- html_nodes(page_html, "table")

# We want the third table on the page;
# double brackets because it's a list
state_gdp <- html_table(tables[[3]]) 

state_gdp

# We need to clean up the data so we can work with it

# rename the columns to variable names that are appropriate for R
names(state_gdp) <- c("rank", "state", "pop", "pop_percent", "gdp_per_capita", "region")

# get rid of row for entire US
state_gdp <- state_gdp[-1, ]

# remove commas from numbers and convert to numeric type
# hint: gsub(thing to replace, replace it with, text)
# Example: gsub("a", "!", "cat")
# hint: "" is an empty string -- useful for removing things from text
# hint: as.integer()
state_gdp$pop <- as.integer(gsub(",", "", state_gdp$pop))
state_gdp$gdp_per_capita <- as.integer(gsub(",", "", state_gdp$gdp_per_capita))

# remove footnotes from columns (things in [])
# hint: as.numeric()
# hint: "\\[.\\]" is a pattern to replace any single character inside []
state_gdp$pop_percent <- as.numeric(gsub("\\[.\\]", "", state_gdp$pop_percent))
state_gdp$region <- gsub("\\[.\\]", "", state_gdp$region)


# Now compute the mean per capita GDP for each region
tapply(state_gdp$gdp_per_capita, state_gdp$region, mean)


# The above averages across states, treating each state equally.
# Compute a mean weighted by population percent column (% of nation) instead with weighted.mean()
# Hint: you can't use tapply or aggregate here, so compute for each region manually
weighted.mean(state_gdp$gdp_per_capita[state_gdp$region == "Northeast"], 
              state_gdp$pop_percent[state_gdp$region == "Northeast"])
weighted.mean(state_gdp$gdp_per_capita[state_gdp$region == "Midwest"], 
              state_gdp$pop_percent[state_gdp$region == "Midwest"])
weighted.mean(state_gdp$gdp_per_capita[state_gdp$region == "South"], 
              state_gdp$pop_percent[state_gdp$region == "South"])
weighted.mean(state_gdp$gdp_per_capita[state_gdp$region == "West"], 
              state_gdp$pop_percent[state_gdp$region == "West"])

