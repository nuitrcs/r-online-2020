# If/else Answers

# Remember: use if-else statements when checking and returning single values;
# use ifelse() to check all values in a vector and get a vector of the same length in return.

# ifelse() example:
# ifelse(test, result if true, result if false)
x <- c(1, 2, 3)
ifelse(x > 2, "cat", "dog")


# Write an if-else statement that compares two variables, a or b, 
# and prints the one that has the larger value.
# Two starting values are provided, but you can change the values to 
# check your code
a <- 5
b <- 6
if (a > b) {
  print(a)
} else {
  print(b)
}


# Write an if-else statement that looks at the value in 
# a current_month variable and prints the number of days in that month.
# Hints: 
# 1) the built in vector month.name has the month names if you need them
month.name
# 2) You might want to use %in% to combine conditions

current_month <- "February"
if (current_month %in% c("September", "April", "June", "November")) {
  print("30 days")
} else if (current_month %in% c("January", "March", "May", "July", "August", "October", "December")) {
  print("31 days")
} else if (current_month == "February") {
  print("Usually 28 days") 
} else {
  print("Not a valid month")
}

# Challenge: convert the above to an nested ifelse() statement
# meaning that you'll need to call ifelse() inside another call to ifelse();
# use month.name as the vector in your ifelse() statement
ifelse(month.name %in% c("September", "April", "June", "November"), 
       30,
       ifelse(month.name %in% c("January", "March", "May", "July", "August", "October", "December"),
              31, 
              28)
)


# Use ifelse() to return the pairwise maximum of two vectors, v1 and v2.
# For example if 
# v1 <- c(3, 2, -6)
# v2 <- c(2, 4, -5)
# then your ifelse() statement should produce:
# 3, 4, -5
set.seed(5832)  # makes sure your results match the answers if you run all the code
v1 <- rnorm(10)
v2 <- rnorm(10)
v1
v2

ifelse(v1 > v2, v1, v2)


# Use ifelse() to recode negative values in the mydata vector to NA
# don't forget to check your results by looking at the contents of mydata after you change it
mydata <- c(5, -9, 3, 6, 1, 7, -5, -2, NA, 3, -11, 0)

mydata <- ifelse(mydata < 0, NA, mydata)
mydata





