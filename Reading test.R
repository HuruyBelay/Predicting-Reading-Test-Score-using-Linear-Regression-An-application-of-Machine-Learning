train <- read.csv("pisa2009train.csv")
test <- read.csv("pisa2009test.csv")

full <- bind_rows(train, test)  ## Binding the train and test data

## check the structure of the data
str(full)

## changing the type of variable
full$male <- as.factor(as.character(full$male))
full$raceeth <- as.factor(as.character(full$raceeth))
full$preschool <- as.factor(as.character(full$preschool))
full$expectBachelors <- as.factor(as.character(full$expectBachelors))
full$motherHS <- as.factor(as.character(full$motherHS))
full$motherBachelors <- as.factor(as.character(full$motherBachelors))
full$motherWork <- as.factor(as.character(full$motherWork))
full$fatherHS <-as.factor(as.character(full$fatherHS))
full$fatherBachelors <- as.factor(as.character(full$fatherBachelors))
full$fatherWork <- as.factor(as.character(full$fatherWork))
full$selfBornUS <- as.factor(as.character(full$selfBornUS))
full$motherBornUS <- as.factor(as.character(full$motherBornUS))
full$fatherBornUS <- as.factor(as.character(full$fatherBornUS))
full$englishAtHome <- as.factor(as.character(full$englishAtHome))
full$computerForSchoolwork <- as.factor(as.character(full$computerForSchoolwork))
full$read30MinsADay <- as.factor(as.character(full$read30MinsADay))
full$schoolHasLibrary <- as.factor(as.character(full$schoolHasLibrary))
full$publicSchool <- as.factor(as.character(full$publicSchool))
full$urban <- as.factor(as.character(full$urban))

str(full)
names(full)

## changing male to gender
full$gender <- full$male   ## male=1 and female=0

#### Removing missing values
train <- na.omit(train)
test <- na.omit(test)
full <- na.omit(full)

## check the missing values
summary(full)

library(ggplot2)
ggplot(full, aes(readingScore)) +
           geom_density()   ## From the figure, the dependent(outcome) variable is normally distributed

ggplot(full, aes(preschool, fill=raceeth)) + 
    geom_bar(position = "fill")

ggplot(full, aes(grade, schoolSize)) +
    geom_point()

     