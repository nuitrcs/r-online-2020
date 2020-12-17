# Data Cleaning Answers

# You want to use some data in a table on wikipedia to compute
# the average per capita gdp by US region

# There's code to retrieve the data below.  You need to clean it
# and compute regional averages.

# Note: this exercise requires you to use new functions 
# you probably haven't seen yet.  It's a mini example of 
# a real data analysis task

# NOTE: sometimes the web page we're pulling data from changes;
# if so, please let me know I need to update this!


# install.packages("rvest")

library(rvest)

# Pull data from this wikipedia page:

url <- "https://en.wikipedia.org/wiki/List_of_states_and_territories_of_the_United_States_by_GDP"

page_html <- read_html(url)
tables <- html_nodes(page_html, "table")

# We want the third table on the page;
# double brackets because it's a list
state_gdp <- html_table(tables[[3]]) 

# View the data to check what it looks like
View(state_gdp)

# We need to clean up the data so we can work with it

# rename the columns to variable names that are appropriate for R
names(state_gdp) <- c("rank", "state", "gdp", "perc", "gdp_per_capita", "region")

# get rid of row for entire US
state_gdp <- state_gdp[-1, ]

# the only columns we want to keep are the name of the state/territory,
# the gdp per capita, and the region.  Drop the rest
state_gdp <- state_gdp[,c("state", "gdp_per_capita", "region")]

# remove footnotes (things in []) where they exist
# hint: gsub(thing/pattern to replace, replace it with, text)
# Example: gsub("a", "!", "cat")
# hint: "" is an empty string -- useful for removing things from text
# hint: "\\[.{1,2}\\]" is a pattern to replace one or two characters inside []
# hint: do a similar thing for each of the columns with footnotes 
# (2 that we care about last I checked)
state_gdp$gdp_per_capita <- gsub("\\[.{1,2}\\]", "", state_gdp$gdp_per_capita)
state_gdp$region <- gsub("\\[.{1,2}\\]", "", state_gdp$region)

# remove commas from numbers in gdp_per_capita and convert to numeric type
# hint: gsub like above
# hint: as.integer()
state_gdp$gdp_per_capita <- as.integer(gsub(",", "", state_gdp$gdp_per_capita))


# Now compute the mean per capita GDP for each region
tapply(state_gdp$gdp_per_capita, state_gdp$region, mean)
# you could have also used aggregate()



# optional: recode the "region" for the territories to a different value, 
# (instead have having them grouped in with the states) and 
# recompute the mean per capital GDP for each region with the new definition
# hint: 
territories <- c("Puerto Rico", "Guam", "U.S. Virgin Islands", 
                 "Northern Mariana Islands", "American Samoa")
# I'm going to treat DC as a state because it's between Virgina and Maryland

state_gdp$region[state_gdp$state %in% territories] <- "territory" 
tapply(state_gdp$gdp_per_capita, state_gdp$region, mean)
