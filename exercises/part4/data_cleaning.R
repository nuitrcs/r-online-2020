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

page_html <- read_html(url)  # gets the page html over the internet
tables <- html_nodes(page_html, "table")  # gets all of the tables out of the page

# We want the third table on the page;
# double brackets because it's a list
state_gdp <- html_table(tables[[3]]) 

state_gdp

# We need to clean up the data so we can work with it

# rename the columns to variable names that are appropriate for R


# get rid of the row for the entire US


# remove commas from numbers and convert to numeric type
# hint: gsub(thing to replace, replace it with, text)
# Example: gsub("a", "!", "cat")
# hint: "" is an empty string -- useful for removing things from text
# hint: as.integer()




# remove footnotes from columns (things in [])
# hint: as.numeric()
# hint: "\\[.\\]" is a pattern that matches any single character inside []





# Now compute the mean per capita GDP for each region




# The above averages across states, treating each state equally.
# Compute a mean weighted by population percent column (% of nation) instead with weighted.mean()
# Hint: you can't use tapply or aggregate here, so compute for each region manually



