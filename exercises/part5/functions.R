# Functions Answers

# Here's a custom function (remember to run this code):
fahr_to_kelvin <- function(temp) {
  kelvin <- ((temp - 32) * (5 / 9)) + 273.15
  return(kelvin)
}

# Call it:
fahr_to_kelvin(32)


# Write the reverse function, kelvin_to_fahr:





# Call your function




# Call both functions to test that they work correctly.  
# The code below should return whatever the input value is 
# (since it coverts it then converts it back)
kelvin_to_fahr(fahr_to_kelvin(32))


# Rewrite your kelvin_to_fahr function to return NULL if the supplied temp < 0
# (0 degrees Kelvin is absolute zero)






# Call your rewritten function with a negative number and then a positive number:





