data <- read.csv('C:/Users/User/Downloads/evals.csv')
?read.csv
head(data)
tail(data)
View(data)
data$ten_point_scale <- data$score * 2
str(data)
summary(data)

data("mtcars")
str(mtcars)

a <- 10
if (a > 0){
  print('positive')
} else {
  print('not positive')
}
ifelse(a > 0, 'positive', 'not positive')

for (i in 1:100){
  print(i**2)
}
for (i in 1:nrow(data)){
  if (data$score[i] > 4){
    data$quality[i] <- "good"
  } else {
    data$quality[i] <- 'bad'
  }
}

data("AirPassengers")
plot(AirPassengers)
str(AirPassengers)
good_month <- c()
good_month <- c(good_month, 0)
AirPassengers <- as.vector(AirPassengers)

moving_average <- numeric(135)
for (i in 1:135){
  moving_average[i] = mean(AirPassengers[i:(i+9)])
}
plot(moving_average)


library(psych)
describe(mtcars)
head(mtcars)
mtcars$vs <- factor(mtcars$vs, labels = c("V", "S"))
mtcars$am <- factor(mtcars$am, labels = c("Auto", "Manual"))
describe(mtcars)
describeBy(mtcars[,-c(8,9)], group = mtcars$vs, mat=T, digits = 2)

sum(is.na(mtcars))

head(airquality)
data("airquality")
airquality_f <- airquality[airquality$Month %in% c(7, 8, 9),]
result <- aggregate(Ozone ~ Month, airquality_f, length)

describeBy(x = airquality, group = airquality$Month )
str(airquality)

data("iris")
describeBy(iris, iris$Species)
View(iris)

my_vector <- rnorm(30)
my_vector[sample(1:30, 10)] <- NA
fixed_vector <- my_vector
fixed_vector[is.na(fixed_vector)] = mean(my_vector, na.rm = T)

library(ggplot2)
airquality_f <- airquality[airquality$Month %in% c(9),]
airquality_f$Month <- factor(airquality_f$Month, labels = c("9"))
boxplot(x = airquality_f$Month, airquality_f$Ozone)


plot1 <- ggplot(mtcars, aes(x = mpg, y = disp, col = hp))+
  geom_point()