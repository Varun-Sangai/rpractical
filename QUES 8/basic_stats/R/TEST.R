#Setting working directory to where our package is created
setwd("C:/Users/krishna/Desktop/basic_stats")
#loading devtools packages
library(devtools)
#loading all .r files created by me
load_all(".")
#functions call --> testing few functions created 
calc_mean(c(1,2,3))
calc_sum(c(1,2,3))
calc_diff(c(4,3))
calc_min(c(12,34,11))
calc_max(c(12,34,11))
square_root(4)
calc_absolute(-16)
truncate(c(1,1,2,3,4,4))

