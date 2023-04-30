
# Read the CSV into a data frame object
(toy_data <- read.csv("toy_dataset.csv"))

# Attach the data frame to the environment
attach(toy_data)

# Count the number of rows with City = New York City
(nrow(toy_data[toy_data$City == "New York City",]))
#or this
(nrow(subset(toy_data,City == "New York City")))

# Display rows that have top 5 income values
(head(toy_data[order(-toy_data$Income),], 5))

# Find out the number of rows with income greater than average income
(avg_income <- mean(toy_data$Income))
(nrow(toy_data[toy_data$Income > avg_income,]))
#or this
(nrow(subset(toy_data,Income>avg_income)))

# Find the highest salary for the female population
(max(toy_data[Gender == "Female",]$Income))
#or this
(max(Income[Gender == "Female"]))

# Randomly select 10 rows from the given dataset

sample_rows <- sample(nrow(toy_data), 10)
(toy_data[sample_rows,])

# Detach the data frame object from the environment
detach(toy_data)

