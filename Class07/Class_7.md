Class07
================
ttakhar
Thu Nov 1 11:47:41 2018

``` r
# Revisit function things

source("http://tinyurl.com/rescale-R")

rescale(1:10)
```

    ##  [1] 0.0000000 0.1111111 0.2222222 0.3333333 0.4444444 0.5555556 0.6666667
    ##  [8] 0.7777778 0.8888889 1.0000000

``` r
rescale2
```

    ## function (x, na.rm = TRUE, plot = FALSE, ...) 
    ## {
    ##     if (!is.numeric(x)) {
    ##         stop("Input x should be numeric", call. = FALSE)
    ##     }
    ##     rng <- range(x, na.rm = TRUE)
    ##     answer <- (x - rng[1])/(rng[2] - rng[1])
    ##     if (plot) {
    ##         plot(answer, ...)
    ##     }
    ##     return(answer)
    ## }

``` r
## Write a both_na() function
#Start with a simple setup where we know 
#what the answer should be

x <- c( 1, 2, NA, 3, NA)
y <- c(NA, 3, NA, 3, 4)

is.na(x) & is.na(y)
```

    ## [1] FALSE FALSE  TRUE FALSE FALSE

``` r
sum(is.na(x))
```

    ## [1] 2

``` r
sum(is.na(y))
```

    ## [1] 2

``` r
sum(is.na(x) & is.na(y))
```

    ## [1] 1

``` r
# Our first function for NA finding
both_na <- function(x, y) {
  sum( is.na(x) & is.na(y) )
}

both_na(x,y)
```

    ## [1] 1

``` r
x <- c(NA, NA, NA)
y1 <- c( 1, NA, NA)
y2 <- c( 1, NA, NA, NA)

both_na(x,y1)
```

    ## [1] 2

``` r
both_na(x,y2)
```

    ## Warning in is.na(x) & is.na(y): longer object length is not a multiple of
    ## shorter object length

    ## [1] 3

``` r
rbind(x,y2)
```

    ## Warning in rbind(x, y2): number of columns of result is not a multiple of
    ## vector length (arg 1)

    ##    [,1] [,2] [,3] [,4]
    ## x    NA   NA   NA   NA
    ## y2    1   NA   NA   NA

``` r
## Find matching genes (intersect of two data frames)
# Simplify further to single vectors

x <- df1$IDs
y <- df2$IDs
intersect(x,y)
```

    ## [1] "gene2" "gene3"

``` r
gene_intersect(x,y)
```

    ##      [,1]    [,2]   
    ## [1,] "gene2" "gene2"
    ## [2,] "gene3" "gene3"
