# Functions Answers

# Here's a custom function (remember to run this code):
fahr_to_kelvin <- function(temp) {
  kelvin <- ((temp - 32) * (5 / 9)) + 273.15
  return(kelvin)
}

# Call it:
fahr_to_kelvin(32)


# Write the reverse function, kelvin_to_fahr:
kelvin_to_fahr <- function(temp) {
  (temp - 273.15) * 9/5 + 32  # the last value will be returned even without return()
}


# Call your function
kelvin_to_fahr(273.15)


# Call both functions to test that they work correctly.  
# The code below should return whatever the input value is 
# (since it coverts it then converts it back)
kelvin_to_fahr(fahr_to_kelvin(32))


# Rewrite your kelvin_to_fahr function to return NULL if the supplied temp < 0
# (0 degrees Kelvin is absolute zero)
kelvin_to_fahr <- function(temp) {
  if (temp < 0) {
    return(NULL)
  } # you don't need else because you can't get to the next line if the above returned
  (temp - 273.15) * 9/5 + 32  # the last value will be returned even without return()
}

# Call your rewritten function with a negative number and then a positive number:
kelvin_to_fahr(-1)
kelvin_to_fahr(100)




