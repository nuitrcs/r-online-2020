# Functions 2 Answers

# Write a function that takes a character vector as input and 
# recodes any values that are not the 3 most frequent values as "Other"

# Then generalize your function to take an additional argument n to specify 
# how many values stay as they are (instead of always 3)

# Challenge: add some error checking to your function: see the stop() function

# Vectors to test your function with
x <- c(letters[1:5], letters[1:5], letters[6:10])
y <- c(month.name, month.name[6:10], month.name[7:12], month.name[5:7])
z <- c("dog", rep("cat", 2), rep("chicken", 3), rep("pig", 4), rep("cow", 5))


make_other <- function(x, n=3) {
  if (!is.character(x)) {
    stop("x must be a character vector")
  }
  if (n < 1) {
    stop("n must be at least 1")
  }
  tbl <- table(x)
  if (length(tbl) < n) {
    stop(paste("There are less than", n, "unique values in x"))
  }
  top_n <- names(sort(tbl, decreasing=TRUE))[1:n]
  x[!x %in% top_n] <- "Other"
  x
}


make_other(x)
make_other(y)
make_other(z)
make_other(x, 6)

# test error checking
make_other(x, 0)
make_other(c("a"), 4)
