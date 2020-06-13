# Data Frames 2

# Review: Sorting a data frame

# While sort() puts the values of a vector in an order, for a data frame, 
# we want to sort the rows by one column, not just a single vector.

# Use order() to tell you want order the rows should be in, if you sort by one or more vectors
data(mtcars)
head(mtcars)
sort(mtcars$mpg) ## just sorts the values
order(mtcars$mpg)  ## tells you what index position each value should be at when sorted

# Use the index values to order the data frame:
mtcars[order(mtcars$mpg), ]

# order() can take multiple vectors:
mtcars[order(mtcars$cyl, mtcars$mpg), ]

# and you can switch to decreasing order
mtcars[order(mtcars$mpg, decreasing = TRUE), ]


# read in SAFI data 
safi <- read.csv("data/SAFI_clean.csv", 
                 na = c("", "NULL", "NA"),
                 stringsAsFactors = FALSE)

# Sort safi by interview_date in reverse (newest first); save back to safi


# check
head(safi$interview_date)

# Sort Safi by interview_date and then by village (either ascending or descending order is fine);
# save back to safi


# check
head(safi[, c("interview_date", "village")], n=20)


# make a new column, called long_resident, that is TRUE if years_liv is greater than the average
# of years_liv in the data, FALSE otherwise.
# Replace the ___ before with the code you need
safi$____ <- _____ > mean(____)


# drop (remove) the key_ID column from the safi dataset

