# Task 1:
getwd()

# Task 2:
# using some of the given example R code we can read data into my instance of R studio
# Although at this time I'm not sure of what type of data data( the var) is here
# maybe a vector?
data <- read.csv("DDT-1.csv")

# Apply more given code, this gives me an entire row of the .csv file. 2nd arg is number of rows to be returned
head(data,6)

# Task 3:
# This task asks about some metadata about the data object we used above

# Number of species in the data set
length(unique(data$SPECIES))
