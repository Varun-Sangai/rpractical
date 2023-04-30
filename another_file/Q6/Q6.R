
# Load the iris dataset
data(iris)
par(mar=c(1,1,1,1))
# Display the summary statistics for all the variables in the dataset
(summary(iris))

# Plot a scatter plot for Sepal length and Sepal width for the species “setosa”
setosa_data <- iris[iris$Species == "setosa", ]
plot(setosa_data$Sepal.Length, setosa_data$Sepal.Width, 
     xlab = "Sepal Length", ylab = "Sepal Width", 
     main = "Scatter Plot of Sepal Length vs. Sepal Width for Setosa")

# Plot a histogram for the variable Petal.length
hist(iris$Petal.Length, 
     xlab = "Petal Length", ylab = "Frequency", 
     main = "Histogram of Petal Length")

# Create a boxplot for Petal width of Species=versicolor
versicolor_data <- iris[iris$Species == "versicolor", ]
boxplot(versicolor_data$Petal.Width, 
        xlab = "Versicolor", ylab = "Petal Width", 
        main = "Boxplot of Petal Width for Versicolor")

