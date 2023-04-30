
# Read in the data from the CSV file
rainfall <- read.csv("rainfall_in_india_1901-2015.csv", header = TRUE)
#reading only 2015 year
(rainfall2015<-subset(rainfall,YEAR==2015))
#first 10 days(assuming it's 10 rows)
(ten_days<- head(rainfall2015<-subset(rainfall,YEAR==2015),10))

# Create a subset of the rainfall data where rain is larger than 20
(rain_above_20 <- subset(rainfall2015, JAN > 20 | FEB > 20 | MAR > 20 | APR > 20 | MAY > 20 | JUN > 20 | JUL > 20 | AUG > 20 | SEP > 20 | OCT > 20 | NOV > 20 | DEC > 20))

# Find the mean rainfall for days where the rainfall was at least 4
rain_above_4 <- subset(rainfall, JAN >= 4 & FEB >= 4 & MAR >= 4 & APR >= 4 & MAY >= 4 & JUN >= 4 & JUL >= 4 & AUG >= 4 & SEP >= 4 & OCT >= 4 & NOV >= 4 & DEC >= 4)
(mean_rain_above_4 <- apply(rain_above_4[,3:14], 2, mean))

# Subset the vector where rainfall is either exactly zero, or exactly 0.6
(rain_0_or_0.6 <- subset(rainfall, JAN == 0 | FEB == 0 | MAR == 0 | APR == 0 | MAY == 0 | JUN == 0 | JUL == 0 | AUG == 0 | SEP == 0 | OCT == 0 | NOV == 0 | DEC == 0 | JAN == 0.6 | FEB == 0.6 | MAR == 0.6 | APR == 0.6 | MAY == 0.6 | JUN == 0.6 | JUL == 0.6 | AUG == 0.6 | SEP == 0.6 | OCT == 0.6 | NOV == 0.6 | DEC == 0.6))

