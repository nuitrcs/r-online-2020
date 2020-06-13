# Data Frames 1 answer

# Functions that may be useful:
# names(), nrow(), str(), View(), table(), factor()

# read in the safi data, then do the tasks below
safi <- read.csv("data/SAFI_clean.csv", 
                 na = c("", "NULL", "NA"),
                 stringsAsFactors = FALSE)   # for R version >= 4.0, stringsAsFactors = FALSE is the default


# What are the names of the variables in the data (the columns)
# You can see variable descriptions at: http://www.datacarpentry.org/socialsci-workshop/data/
names(safi)

# How many observations in the data?
nrow(safi)

# Open the data frame in the viewer
# hint: use the View() function or click on the data in the Environment pane
View(safi)

# What are the types of the variables?
str(safi)

# Make the village column a factor instead of character
safi$village <- factor(safi$village)

# Make a table of respondent_wall_type to see how many observations for each;
# what do you notice?
table(safi$respondent_wall_type)

# Select just village and no_membrs columns (the latter is number of family members)
safi[,c("village", "no_membrs")]

# Print just the first row of data 
safi[1,]

# Drop the instanceID column
safi <- safi[,-match("instanceID", names(safi))]
# Alternative: safi <- safi[,-ncol(safi)]

# select the column respondent_wall_type for just the rows where the village is God
safi[safi$village == "God", "respondent_wall_type"]

# select rows where no_membrs is > 2 and < 5
safi[safi$no_membrs > 2 & safi$no_membrs < 5,]



