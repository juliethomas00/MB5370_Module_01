#install.packages("ggplot2")
library(ggplot2)

# exercise 1, page 19

exercise1 <- 15 + 25.1 + 20.25
exercise1_num <- 32

exercise1_sum <- exercise1 + exercise1_num

print (exercise1_sum)


# practice tasks, page 21 - 22

years_old <- 25.7
round(years_old) # round up
floor(years_old) # roud down

years_old <- 25.765
round(years_old, 2)


# exercise 2, page 20

first_name <- "Julie"
paste(first_name, 'is', years_old, 'years old')


# practice tasks, page 22 - 

grade <- 55
total <- grade + 10
print (total)
grade <- 90
print (total) # value of total in a spreadsheet will be 100, but in programming a variable holds the value it was assigned (65)
total <- grade + 10
print (total) # executed in the way it was defined


# What will this code do?
p <- 2
z <- 5
out <- p * z  # What should the value of out be?
print (out) # What is the value of out? Is it the same as expected?


# Testing
x <- 1
is.character(x)
is.numeric (x)


# exercise 3, page 22

my_quiz <- c("uno",
             "dos",
             "tres",
             "cuatro",
             "cinco")
print (my_quiz)
str(my_quiz)
length(my_quiz)


# WORKSHOP 3 :
# basic plot
library(ggplot2)
basic_plot <- ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, fill = class), colour = "black", size = 3) +
  theme_bw() +
  labs(x = "Engine Displacement (L)", y = "highway miles per Gallon", fill = "Vehicle Class")

print(basic_plot)

