---
title: "Module1_MB5370"
output: html_document
date: "2026-05-20"
---



## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:


``` r
summary(cars)
```

```
##      speed           dist       
##  Min.   : 4.0   Min.   :  2.00  
##  1st Qu.:12.0   1st Qu.: 26.00  
##  Median :15.0   Median : 36.00  
##  Mean   :15.4   Mean   : 42.98  
##  3rd Qu.:19.0   3rd Qu.: 56.00  
##  Max.   :25.0   Max.   :120.00
```

## Including Plots

You can also embed plots, for example:

![plot of chunk pressure](figure/pressure-1.png)

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.

``` r
# --------------------------- WORKSHOP 1 ---------------------------
```


``` r
# exercise 1, page 19

exercise1 <- 15 + 25.1 + 20.25
exercise1_num <- 32

exercise1_sum <- exercise1 + exercise1_num

print (exercise1_sum)
```

```
## [1] 92.35
```


``` r
# practice tasks, page 21 - 22

years_old <- 25.7
round(years_old) # round up
```

```
## [1] 26
```

``` r
floor(years_old) # roud down
```

```
## [1] 25
```

``` r
years_old <- 25.765
round(years_old, 2)
```

```
## [1] 25.76
```


``` r
# exercise 2, page 20

#paste(first_name, 'is', years_old, 'years old')
```

``` r
# practice tasks, page 22 - 

grade <- 55
total <- grade + 10
print (total)
```

```
## [1] 65
```

``` r
grade <- 90
print (total) # value of total in a spreadsheet will be 100, but in programming a variable holds the value it was assigned (65)
```

```
## [1] 65
```

``` r
total <- grade + 10
print (total) # executed in the way it was defined
```

```
## [1] 100
```

``` r
# What will this code do?
p <- 2
z <- 5
out <- p * z  # What should the value of out be?
print (out) # What is the value of out? Is it the same as expected?
```

```
## [1] 10
```

``` r
# Testing
x <- 1
is.character(x)
```

```
## [1] FALSE
```

``` r
is.numeric (x)
```

```
## [1] TRUE
```


``` r
# exercise 3, page 22

my_quiz <- c("uno",
             "dos",
             "tres",
             "cuatro",
             "cinco")
print (my_quiz)
```

```
## [1] "uno"    "dos"    "tres"   "cuatro" "cinco"
```

``` r
str(my_quiz)
```

```
##  chr [1:5] "uno" "dos" "tres" "cuatro" "cinco"
```

``` r
length(my_quiz)
```

```
## [1] 5
```

``` r
# added a comma after "cuatro" - missing
# typo in print (my_quis)
# error in len - couldn't find function "len", had to change it to length
```


``` r
# practice tasks, page 22 -

# six basic data types : character, numeric, integer, logical, complex, raw
# built-in functions to help examine objects to understand type: class(), typeof(), length(), attributes()
```


``` r
# exercise, page 23

my_numeric_variable = 4.2
my_character_variable = 'julie'
my_integer_variable = 8
my_logical_variable = 5 > 3

print(c (my_numeric_variable, my_character_variable, my_integer_variable, my_logical_variable)) 
```

```
## [1] "4.2"   "julie" "8"     "TRUE"
```

``` r
typeof(my_numeric_variable)
```

```
## [1] "double"
```

``` r
typeof(my_character_variable)
```

```
## [1] "character"
```

``` r
typeof(my_integer_variable)
```

```
## [1] "double"
```

``` r
typeof(my_logical_variable)
```

```
## [1] "logical"
```


``` r
# exercise, page 24

y <- c(1, 2, 3)
z <- c("Sarah", "Tracy", " Jon")

class(z)
```

```
## [1] "character"
```

``` r
class(y)
```

```
## [1] "numeric"
```

``` r
# vectors - collection of elements of the same type
```


``` r
# lists - values of several different types

x <- list(1, "a", TRUE)
x
```

```
## [[1]]
## [1] 1
## 
## [[2]]
## [1] "a"
## 
## [[3]]
## [1] TRUE
```

``` r
x[[2]]
```

```
## [1] "a"
```


``` r
# data frames and tibbles - like excel spreadsheets, 2D or rectangular data files; each column holds elements of the same type

# import from file like .csv or .xlsx or build in R from ground up
my_dataframe <- data.frame (no = c(1, 2, 3), c("Tracey", "John", "Pete"), c(TRUE, FALSE, TRUE))
my_dataframe
```

```
##   no c..Tracey....John....Pete.. c.TRUE..FALSE..TRUE.
## 1  1                      Tracey                 TRUE
## 2  2                        John                FALSE
## 3  3                        Pete                 TRUE
```

``` r
str(my_dataframe)
```

```
## 'data.frame':	3 obs. of  3 variables:
##  $ no                         : num  1 2 3
##  $ c..Tracey....John....Pete..: chr  "Tracey" "John" "Pete"
##  $ c.TRUE..FALSE..TRUE.       : logi  TRUE FALSE TRUE
```

``` r
# makes a guess at type of each column, check and change if necessary by accessing column and changing type

my_dataframe$no = as.factor(my_dataframe$no)
str(my_dataframe)
```

```
## 'data.frame':	3 obs. of  3 variables:
##  $ no                         : Factor w/ 3 levels "1","2","3": 1 2 3
##  $ c..Tracey....John....Pete..: chr  "Tracey" "John" "Pete"
##  $ c.TRUE..FALSE..TRUE.       : logi  TRUE FALSE TRUE
```

``` r
# factor is categorical type - telling R that column 1 is actually storing a category rather than a real continuous number

# important each vector same length (column); use NA (cell with no data) - na.omit (remove rows with NAs) or is.na (check if value is not available)
```


``` r
# packages and libraries

# use software that other people have written, collection of functions
# published on The Comprehensive R Archive Network

#install.packages("tidyverse")
#library(tidyverse)
#install.packages("ggplot2")
#install.packages("tidyr")
#install.packages("earthtones")
#install.packages("redlistr")
#install.packages("dplyr")
#install.packages("terra")
#library(ggplot2)
#library(tidyr) 
#library(earthtones)
#library(redlistr)
#library(dplyr)
#library(terra)

# both ggplot2 and tidyr are part of tidyverse family of packages
```


``` r
# class discussion, page 27

# We want to take a .csv dataset representing counts from a BRUVs survey and turn it into a plot of the abundance of a single species. What major steps - the main tasks you would need to do using programming - might be required to get from a structured .csv table to a plot of a single species? Record your answers in your script using numbered comments.

# read .csv dataset into R
# store it into an object to call
# use ggplot2 to plot it

# generic
# 1. Import/load the .csv dataset into R
#data <- read.csv("my_bruvs_data.csv")

# 2. Inspect and clean the data
#head(data)          # View first rows
#str(data)           # Check structure/data types
#summary(data)       # Summary statistics

# Remove rows with missing values (optional)
#data <- na.omit(data)

# 3. Select/filter the data for the single species of interest
#species_data <- subset(data, Species == "Target_Species")

# 4. Summarise abundance data if needed
# Example: total abundance by site

#abundance_summary <- aggregate(Abundance ~ Site,
                               #data = species_data,
                               #FUN = sum)

# View summary table
#print(abundance_summary)

# 5. Create the plot
#barplot(abundance_summary$Abundance,
        #names.arg = abundance_summary$Site,
        #col = "skyblue",
        #main = "Abundance of Target_Species",
        #xlab = "Site",
        #ylab = "Total Abundance")

# 6. Add extra formatting if desired
# (Already included above with title and axis labels)

# 7. Save the plot (optional)
#png("species_abundance_plot.png")
#barplot(abundance_summary$Abundance,
        #names.arg = abundance_summary$Site,
        #col = "skyblue",
        #main = "Abundance of Target_Species",
        #xlab = "Site",
        #ylab = "Total Abundance")
#dev.off()
```


``` r
# --------------------------- WORKSHOP 2 ---------------------------
```


``` r
#install.packages("tidyverse")
#library(tidyverse)

#install.packages("ggplot2")
library(ggplot2)

# plot first ggplot
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))
```

![plot of chunk unnamed-chunk-33](figure/unnamed-chunk-33-1.png)


``` r
# grammar of graphics - graphing template

#ggplot(data = <DATA>) +
  #<GEOM_FUNCTION>(mapping = aes(<MAPPINGS>))

# aesthetic mappings - size, shape, colour

# change point by class
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, colour = class))
```

![plot of chunk unnamed-chunk-34](figure/unnamed-chunk-34-1.png)


``` r
# change point size by class
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = class)) # using size for a discrete variable is not advised
```

```
## Warning: Using size for a discrete variable is not advised.
```

![plot of chunk unnamed-chunk-35](figure/unnamed-chunk-35-1.png)


``` r
# change point transparency by class (alpha)
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))
```

```
## Warning: Using alpha for a discrete variable is not advised.
```

![plot of chunk unnamed-chunk-36](figure/unnamed-chunk-36-1.png)


``` r
# change point shape by class
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))
```

```
## Warning: The shape palette can deal with a maximum of 6 discrete values
## because more than 6 becomes difficult to discriminate
## ℹ you have requested 7 values. Consider specifying shapes manually
##   if you need that many of them.
```

```
## Warning: Removed 62 rows containing missing values or values outside the
## scale range (`geom_point()`).
```

![plot of chunk unnamed-chunk-37](figure/unnamed-chunk-37-1.png)


``` r
# set properties manually, such as by offering a number or a colour; let's make them blue

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")
```

![plot of chunk unnamed-chunk-38](figure/unnamed-chunk-38-1.png)

``` r
# changes the appearance of the plot, doesn't show anything about the nature of the variable you've plotted; make sure makes sense
```


``` r
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = displ < 5))
```

![plot of chunk unnamed-chunk-39](figure/unnamed-chunk-39-1.png)


``` r
# facet and panel plots

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)
```

![plot of chunk unnamed-chunk-40](figure/unnamed-chunk-40-1.png)

``` r
# use this to break single complex plot into many sub plots or panels - only use facet_wrap() for discrete variables
```


``` r
# if you want to do this with more than one variable, then use facet_grid(); needs two variables separated by a ~

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(drv ~ cyl)
```

![plot of chunk unnamed-chunk-41](figure/unnamed-chunk-41-1.png)


``` r
# use a '.' f don't want to facet in the rows or column dimension
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(. ~ cyl)
```

![plot of chunk unnamed-chunk-42](figure/unnamed-chunk-42-1.png)


``` r
# fitting simple lines

# to display data as points:
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))
```

![plot of chunk unnamed-chunk-43](figure/unnamed-chunk-43-1.png)









































































