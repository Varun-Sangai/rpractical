#To create a tab-delimited file, we can use the write.table() function. 
#Here's the code to create the file

data <- data.frame(
  Beer = c(5.24, 5.15, 5.06, 5.07, 4.8, 4.97, 4.68, 4.58, 4.57, 4.49, 4.26),
  Wine = c(2.86, 2.87, 2.94, 2.95, 2.91, 3.01, 3.07, 3.13, 3.11, 2.59, 2.65),
  Spirit = c(1.81, 1.77, 1.88, 2.07, 1.81, 1.86, 2.06, 2.12, 2.15, 1.77, 1.64),
  Country = c("Australia", "Australia", "NewZealand", "Australia", "NewZealand", 
              "NewZealand", "Australia", "NewZealand", "Australia", "NewZealand", "NewZealand"),
  Year = c(1998, 1999, 2002, 2001, 1999, 2000, 2004, 2003, 2006, 1998, 2004)
)

write.table(data, file = "alcohol_data.txt", sep = "\t", row.names = FALSE)

#Now we can read the data into a data frame using the 'read.table()' function
alcohol_data #printing data
alcohol_data <- read.table("alcohol_data.txt", header = TRUE, sep = "\t")

#a) For each year, display the country with maximum Beer consumption and minimum Wine consumption.
library(dplyr)

alcohol_data %>%
  group_by(Year) %>%
  slice_max(Beer) %>%
  select(Year, Country, Beer) %>%
  ungroup() %>%
  rename(Max_Beer_Country = Country, Max_Beer = Beer) %>%
  left_join(
    alcohol_data %>%
      group_by(Year) %>%
      slice_min(Wine) %>%
      select(Year, Country, Wine) %>%
      ungroup() %>%
      rename(Min_Wine_Country = Country, Min_Wine = Wine),
    by = "Year"
  )

#b) Find the average alcohol consumption for each country.
alcohol_data %>%
  group_by(Country) %>%
  summarise(
    Avg_Beer = mean(Beer),
    Avg_Wine = mean(Wine),
    Avg_Spirit = mean(Spirit)
  )
    
#c) Find the Beer consumption for New Zealand for the year(s) when its spirit consumption
#was more than the mean spirit consumption.    
mean_spirit <- mean(alcohol_data$Spirit)

alcohol_data %>%
  filter(Country == "NewZealand", Spirit > mean_spirit) %>%
  select(Year, Beer)

#d) Find the average Beer consumption/Wine Consumption/Spirit consumption for each year.
alcohol_data %>%
  group_by(Year) %>%
  summarise(
    Avg_Beer = mean(Beer),
    Avg_Wine = mean(Wine),
    Avg_Spirit = mean(Spirit)
  )

#e) Plot the mean Beer consumption/mean Wine consumption/mean 
#Spirit consumption for each country using a suitable plot.
library(ggplot2)
install.packages("reshape2")

# Read the data from the tab-delimited file
alcohol_data <- read.delim("alcohol_data.txt")

# Calculate the mean alcohol consumption for each country
mean_alcohol <- aggregate(cbind(Beer, Wine, Spirit) ~ Country, data = alcohol_data, FUN = mean)
mean_alcohol

# Reshape the data into a long format for plotting
mean_alcohol_long <- reshape2::melt(mean_alcohol, id.vars = "Country", variable.name = "Alcohol", value.name = "Consumption")
mean_alcohol_long

# Create a stacked bar plot
ggplot(mean_alcohol_long, aes(x = Country, y = Consumption, fill = Alcohol)) +
  geom_bar(stat = "identity") +
  labs(title = "Mean Alcohol Consumption by Country",
       x = "Country", y = "Mean Alcohol Consumption") +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5),
        axis.text.x = element_text(angle = 45, hjust = 1))

