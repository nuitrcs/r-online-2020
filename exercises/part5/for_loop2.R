# For Loop 2 

# Part 4 has a data cleaning exercise with repetitive code at the end.
# Rewrite the last lines of code with a loop instead.


# From the previous exercise:

# install.packages("rvest")
library(rvest)

# Pull data from this wikipedia page:
url <- "https://en.wikipedia.org/wiki/List_of_states_and_territories_of_the_United_States_by_GDP"
page_html <- read_html(url)
tables <- html_nodes(page_html, "table")
state_gdp <- html_table(tables[[3]]) 
state_gdp

# Clean the data
names(state_gdp) <- c("rank", "state", "pop", "pop_percent", "gdp_per_capita", "region")
state_gdp <- state_gdp[-1, ]
state_gdp$pop <- as.integer(gsub(",", "", state_gdp$pop))
state_gdp$gdp_per_capita <- as.integer(gsub(",", "", state_gdp$gdp_per_capita))
state_gdp$pop_percent <- as.numeric(gsub("\\[.\\]", "", state_gdp$pop_percent))
state_gdp$region <- gsub("\\[.\\]", "", state_gdp$region)



# Compute a mean weighted by population percent column (% of nation) instead with weighted.mean()

# THIS IS THE CODE TO REWRITE WITH A LOOP

weighted.mean(state_gdp$gdp_per_capita[state_gdp$region == "Northeast"], 
              state_gdp$pop_percent[state_gdp$region == "Northeast"])
weighted.mean(state_gdp$gdp_per_capita[state_gdp$region == "Midwest"], 
              state_gdp$pop_percent[state_gdp$region == "Midwest"])
weighted.mean(state_gdp$gdp_per_capita[state_gdp$region == "South"], 
              state_gdp$pop_percent[state_gdp$region == "South"])
weighted.mean(state_gdp$gdp_per_capita[state_gdp$region == "West"], 
              state_gdp$pop_percent[state_gdp$region == "West"])


# For Loop





