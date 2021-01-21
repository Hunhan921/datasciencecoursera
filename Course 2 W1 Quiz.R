hw1_data <- read.csv ("S:\\OneDrive - 연세대학교 (Yonsei University)\\95. Data analysis\\Data science\\Data Science JH\\Course 2\\hw1_data.csv", header =  TRUE)
library(dplyr)
library(tidyverse)
#1. In the dataset provided for this Quiz, what are the column names of the dataset
names(hw1_data)
#2. Extract the first 2 rows of the data frame and print them to the console. 
#What does the output look like
hw1_data[1,]
hw1_data[2,]
#3. How many observations (i.e. rows) are in this data frame?
#153
#4. Extract the last 2 rows of the data frame and print them to the console. What does the output look like?
hw1_data[152,]
hw1_data[153,]
#5. What is the value of Ozone in the 47th row?
hw1_data[47,1]
#6. How many missing values are in the Ozone column of this data frame?
sum(is.na(hw1_data$Ozone))
#7. What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.
bad <- is.na(hw1_data$Ozone)
mean(hw1_data$Ozone[!bad])
#8. Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?
x <- hw1_data %>% filter(Ozone > 31, Temp > 90) 
mean(x$Solar.R)
#9. What is the mean of "Temp" when "Month" is equal to 6?
y <- hw1_data %>% filter(Month == 6)
mean(y$Temp)
#10. What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?
z <- hw1_data %>% filter (Month == 5) %>% arrange(desc(Ozone))
z