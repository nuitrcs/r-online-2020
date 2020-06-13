# Vectors 1 answers

# we're going to do some random draws, so set the 
# random seed so we get the same results each time (starts random sequence in same place)
set.seed(1234) 

# Vector with 5 random (normal) values

x1 <- rnorm(5)
x1

# Which values in x1 are less than 0?
# Compare x1 to 0

x1 < 0

# Create another vector named x2 with 5 random (normal) values in it
# (copy and modify the code in line 9 above)
# drawn from distribution with mean 0.5; 
# look in the distributions section on the reference card
# to see how to specify the mean

x2 <- rnorm(5, mean = 0.5)
x2

# Compare the maximum values of each vector;
# Is the max of x1 greater than x2?
# look in the Math section of the reference card for the function name
# to get the maximum

max(x1) > max(x2)

# Compare the mean values of each vector;
# Is the mean of x1 greater than x2?
# look in the Math section of the reference card for function name

mean(x1) > mean(x2)


# Add the values 2, 3, and 4 to the end of x1, look at the result
x1 <- c(x1, 2, 3, 4)
x1

