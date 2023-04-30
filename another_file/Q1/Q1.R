# a. Create a numeric, character, integer and logical vector.
n_vector <- c(1.1, 2.2, 3.3)
char_vector <- c("apple", "banana", "cherry")
int_vector <- c(10L, 20L, 30L)
logical_vector <- c(TRUE, FALSE, TRUE)

# b. Create two numeric vectors x and y of different lengths. Next, observe the output of 2*x + y - 3.
x <- c(1, 2, 3)
y <- c(4, 5)
res <- 2 * x + y - 3
print(res)

# c. Create a sequence of all the odd numbers between 100 and 500.
odd_sequence <- seq(101,499,2)
print(odd_sequence)

# d. Calculate the mean and standard deviation of sequence created in part c.
mean_val <- mean(odd_sequence)
sd_val <- sd(odd_sequence)
print(paste("Mean:", mean_val))
print(paste("Standard Deviation:", sd_val))

# e. Create a list containing a vector, an array and a list.
vector <- c(1, 2, 3)
array <- array(1:12, dim = c(2, 2, 3))
list <- list("apple", 1, TRUE)
combined_list <- list(vector, array, list)
print(combined_list)

# f. Create two multiplication compatible matrices M1 and M2 and display their product.
M1 <- matrix(c(1, 2, 3, 4), nrow = 2, ncol = 2)
M2 <- matrix(c(5, 6, 7, 8), nrow = 2, ncol = 2)
product_matrix <- M1 %*% M2
print(product_matrix)

# g. Display row-wise and column-wise mean of the matrix M1.
row_means <- rowMeans(M1)
col_means <- colMeans(M1)
print(paste("Row Means:", row_means))
print(paste("Column Means:", col_means))

# h. Combine the matrices M1 and M2 (as in previous part) using rbind/cbind function.
combined_matrix_rbind <- rbind(M1, M2)
combined_matrix_cbind <- cbind(M1, M2)
print(combined_matrix_rbind)
print(combined_matrix_cbind)

# i. Convert a 3x4 matrix into 2x4 matrix.
original_matrix <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12), nrow = 3, ncol = 4)
new_matrix <- original_matrix[1:2, ]
print(new_matrix)

