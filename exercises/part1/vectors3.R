# Vectors 3

# run this, then do tasks below
x1 <- c(-1.2,  0.27,  1.08, -2.34,  0.42)
x2 <- c(18, 20, 21, 20, 24, 26, 27, 25, 24, 26, 26, 24, 23, 22, 40, 30)

# You can use %in% to test if a value is present in a vector:
3 %in% c(1,2,3)
3 %in% c(4,5,6)
3 %in% c(3,3,NA,4)

# Use %in% to determine whether the value 20 is in x2



# To get the index position that value first occurs in a vector, use match()
match(3, c(1,2,3))
match(3, c(4,5,6))
match(3, c(3,3,NA,4))

# Find the first index of the value 24 in x2



# to get all index positions of a value in a vector, use which() with a boolean vector
which(3 == c(1,2,3))
which(3 == c(4,5,6))  
which(3 == c(3,3,NA,4))

# At what index positions does the value 20 appear in x2?



# Change all values of 20 in x2 to 100; 
# hint: use the expression above to select the elements you want (put the expression inside the []), 
# then set the value to 100

# print x2 just to check that you changed the values


# set the third value in x1 to 5



# set the first and second values in x1 to 1 and 2 respectively



# replace all values of 24 in x2 with 0

