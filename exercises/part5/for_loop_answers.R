# For Loop Answers

# Refresher
# -------------------------
# For loops iterate a variable through the values of a vector.

# You may want to use the values of a vector directly:
result <- ''
for (x in letters) {  # letters is a built-in vector
  if (x %in% c('a', 'e', 'i', 'o', 'u')) {
    result <- paste0(result, x)
  }
}
result

# or you may want to use a counter variable:
result <- 0
for (i in 1:20) {
  if (runif(1) > .5) {  # random draw from a uniform distribution (0 to 1)
    result <- result + 1
  }
}
result  # you'll get different results each time

# or even use the counter variable to index into a result vector:
result <- rep(NA, 20)
for (i in 1:length(result)) {
  result[i] <- i^2
}
result
  

# Exercises
# -------------------------

# Write a for loop to compute the mean of each of 20 random samples of size 8
# from the vector x provided below.  Store the results in the 
# preallocated results vector.
# Use the function sample(vector, #samples) to draw the samples
set.seed(43289) # so results can be reproduced
x <- sample.int(200, 50, replace=TRUE) - 100
x

results <- rep(NA, 20)
for (i in 1:length(results)) {
  results[i] <- mean(sample(x, 8))
}
results



# Write a for loop to print the names of all of the
# files in this project that aren't .R files.
# Use
list.files(".", recursive=TRUE)
# to generate a vector of all file names.
# The endsWith() function will likely be helpful here too.
for (f in list.files(".", recursive=TRUE)) {
  if (!endsWith(f, ".R")) {
    print(f)
  }
}
