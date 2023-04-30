
# loading the air quality dataset (after downloading it)
data(airquality)


print("The structure of the airquality dataset:")
str(airquality)
cat("\n")


print("The No. of observations and variables in the airquality dataset:")
dim(airquality)
cat("\n")


print("The count of complete rows in the airquality dataset:")
complete_rows <- na.omit(airquality)
nrow(complete_rows)
cat("\n")


print("The data for the observation having Temp b/w 70 and 80:")
(temp_70_to_80 <- subset(airquality, Temp >= 70 & Temp <= 80))
cat("\n")



print("The count of observations where Month = 5:")
(count_month_5 <- sum(airquality$Month == 5, na.rm = TRUE))
cat("\n")
#or this
(nrow(subset(airquality,Month==5)))


print("The first 10 rows of the airquality dataset:")
first_10_rows <- head(airquality, n = 10)
print(first_10_rows)
cat("\n")


print("The summary of Wind variable:")
wind_summary <- summary(airquality$Wind)
print(wind_summary)
cat("\n")


print("The airquality dataset sorted in decreasing order of Temp variable:")
sorted_airquality <- airquality[order(-airquality$Temp),]
print(sorted_airquality)
cat("\n")

#or this
(airquality[order(airquality$Temp,decreasing = TRUE),])


print("Adding a new observation to the airquality dataset:")
new_observation <- data.frame(Ozone = 10, Solar.R = 200, Wind = 8, Temp = 75, Month = 8, Day = 31)
airquality <- rbind(airquality, new_observation)

cat("\n")

