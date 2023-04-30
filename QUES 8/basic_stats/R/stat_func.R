calc_mean <- function(x){
  mean(x, trim=0, na.rm=FALSE)
}

calc_sd <- function(x){
  sd(x)
}

calc_sum <- function(x){
  sum(x)
}

calc_diff <- function(x){
  diff(x)
}

calc_min <- function(x){
  min(x)
}

calc_max <- function(x){
  max(x)
}