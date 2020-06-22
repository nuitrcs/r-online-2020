# Factors answer

# Remember:
x <- c("lots", "none", "some", "none", "lots")
x <- factor(x, levels=c("none", "some", "lots"),
            ordered=TRUE)
x >= "some"
sum(x >= "some")  


# run this, then do the tasks below
survey_responses <- sample(c("never", "sometimes", "often", "always"), replace=TRUE, 40)

table(survey_responses)

# note the order of the categories in the table above;
# now, turn survey responses into a factor with ordered levels - 
# hint: use argument ordered=TRUE to factor() and specify the levels explicitly;
# see above for an example





# now make a table again.  What order are the categories in?




# How many survey responses are "often" or "always"





