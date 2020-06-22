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
survey_responses <- factor(survey_responses, 
                           levels=c("never", "sometimes", "often", "always"),
                           ordered=TRUE)

# now make a table again.  What order are the categories in?
table(survey_responses)


# How many survey responses are "often" or "always"

# option 1:
sum(survey_responses > "sometimes")

# option 2:
sum(survey_responses >= "often")

# option 3:
sum(survey_responses %in% c("often", "always"))





