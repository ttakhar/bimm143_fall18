#' ---
#' title: "Class07"
#' output: github_document
#' ---


# Revisit function things

source("http://tinyurl.com/rescale-R")

rescale(1:10)

rescale2


## Write a both_na() function
#Start with a simple setup where we know 
#what the answer should be

x <- c( 1, 2, NA, 3, NA)
y <- c(NA, 3, NA, 3, 4)

is.na(x) & is.na(y)
sum(is.na(x))
sum(is.na(y))
sum(is.na(x) & is.na(y))

# Our first function for NA finding
both_na <- function(x, y) {
  sum( is.na(x) & is.na(y) )
}

both_na(x,y)


x <- c(NA, NA, NA)
y1 <- c( 1, NA, NA)
y2 <- c( 1, NA, NA, NA)

both_na(x,y1)
both_na(x,y2)

rbind(x,y2)



## Find matching genes (intersect of two data frames)
# Simplify further to single vectors

x <- df1$IDs
y <- df2$IDs
intersect(x,y)
gene_intersect(x,y)
