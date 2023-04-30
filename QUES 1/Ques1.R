# a. Create a numeric, character, integer and logical vector.
numeric_vec <- c(1.2, 3.4, 5.6)
numeric_vec
character_vec <- c("apple", "banana", "cherry")
character_vec
integer_vec <- c(1L, 2L, 3L)
integer_vec
logical_vec <- c(TRUE, FALSE, TRUE)
logical_vec

# b. Create two numeric vectors x and y of different lengths. Next, observe the output of 2*x + y - 3.
x <- c(1, 2, 3)
y <- c(4, 5, 6)
result <- 2*x + y - 3
print(result)

# c. Create a sequence of all the odd numbers between 100 and 500.
odd_seq <- seq(from=101, to=499, by=2)
odd_seq

# d. Calculate the mean and standard deviation of sequence created in part c.
mean_odd_seq <- mean(odd_seq)
sd_odd_seq <- sd(odd_seq)
sd_odd_seq

# e. Create a list containing a vector, an array and a list.
vector1 <- c(1,2,3)
array1 <- array(c(1:24), dim=c(2,3,4))
list1 <- list(1:3, "apple", c(TRUE, FALSE, TRUE))
my_list <- list(vector1, array1, list1)
my_list

# f. Create two multiplication compatible matrices M1 and M2 and display their product.
M1 <- matrix(c(1, 2, 3, 4, 5, 6,7,8,9), nrow=3, ncol=3)
M2 <- matrix(c(7, 8, 9, 10, 11, 12,13,14,15), nrow=3, ncol=3)
M_product <- M1 %*% M2
print(M_product)

# g. Display row-wise and column-wise mean of the matrix M1.
row_means <- rowMeans(M1)
col_means <- colMeans(M1)
print(row_means)
print(col_means)

# h. Combine the matrices M1 and M2 (as in previous part) using rbind/cbind function.
combined_r <- rbind(M1, M2)
combined_c <- cbind(M1, M2)
print(combined_r)
print(combined_c)

# i. Convert a 3x4 matrix into 2x4 matrix.
M3 <- M1[1:2, ]
print(M3)
