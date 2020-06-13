# Vectors 2 answer

set.seed(1234) 
x1 <- rnorm(5)
x2 <- rnorm(20, mean=0.5)


# Select the elements of x1 that are less than 0
x1[x1 < 0]

# Select the elements of x2 that are greater than 1
x2[x2 > 1]

# Select the elements of x1 between 0 and 1
x1[x1 > 0 & x1 < 1]

# Trim x2 to the first 5 elements (select first 5 and save back to x2)
x2 <- x2[1:5]

# Select the last element of x1; hint: use length() 
x1[length(x1)]

# Select all but the third and fifth elements of x1
x1[c(-3, -5)]

