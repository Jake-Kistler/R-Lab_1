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

# subset for large mouth bass with a weight > 800 mg
large_mouth_base_subset <- data[data$SPECIES == "LMBASS" & data$WEIGHT > 800, ]
large_mouth_base_subset

# Now to slice up the data by river and DDT amounts
ddt_and_SMC_river <- data[data$RIVER == "SCM" & data$DDT > 4.0, ]
ddt_and_SMC_river

# Task 4:
# Time to do some math... rock and roll?? (oh nevermind we have functions it seems)

# mean is the average
mean(data$LENGTH) # Wild we can't store this value

# mean_length <- mean(data$LENGTH)
# mean_length does not compile which is odd

# now to calc the standard div and off to the web for documentation!
# Found some here for standard div: https://www.scaler.com/topics/built-in-functions-in-r/

sd(data$WEIGHT)

# Task 5:
# time to start working with plots

# Cook up both plots to compare
with(data, plot(WEIGHT ~ LENGTH, bg = "Orange", pch = 21, cex = 1))
with(data, plot(LENGTH ~ WEIGHT, bg = "Orange", pch = 21, cex = 1))

# a math question now
# if v = 1:20 what is the last value of v/20?

# A vector 1 - 20 then divide every element by 20
v = 1:20
v / 20

# task 5: Table time
river_table = with(data,table(data$RIVER))
river_table

# Now to make the bar plot
barplot(river_table, col = "brown")

# Now to make a crossed table with rivers and fish
crossed_table_river_fish = with(data, table(data$RIVER, data$SPECIES))
crossed_table_river_fish

# create a cross table of river and fish species
crossed_table_river_fish <- table(data$RIVER, data$SPECIES)

# make a barplot
barplot(crossed_table_river_fish,
        beside = TRUE,      # put species side-by-side for each river
        col = "brown",
        legend = TRUE,      # add legend for fish species
        xlab = "River",
        ylab = "Count",
        main = "Fish species across rivers")

# Task 6 Pie chart time!

# make the table
species_pie_table <- table(data$SPECIES)

pie(species_pie_table,col = rainbow(3))

# Task 7: box plots

# for DDT
boxplot(data$DDT)

# for weight
boxplot(data$WEIGHT)

# and for length
boxplot(data$LENGTH)


