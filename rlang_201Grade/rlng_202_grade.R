

grade <- function(name, kor, eng, math){
  res<-c(kor,eng,math)
  return(list(name=name,
           sum=sum(res),
           mean=round(mean(res),2),
           grade=switch(
             toString(mean(res)%/%10),
             "10" = "a",
             "9" = "a",
             "8" = "b",
             "7" = "c",
             "6" = "d",
             "e")))
}

kim <- grade("김길동",60,60,60)
rick <-grade("rick",80,80,80)
dan <-grade("dan",90,60,80)
gray <-grade("gray",90,60,80)
ryan <-grade("ryan",90,60,80)
print(kim)


# Create the data frame.
stu.data <- data.frame(
  no = c (1:5), 
  stu_name = c(kim$name,rick$name,dan$name,gray$name,ryan$name),
  stu_sum = c(kim$sum,rick$sum,dan$sum,gray$sum,ryan$sum),
  #stu_mean = c(kim$mean,rick$mean,dan$mean,gray$mean,ryan$mean),
  #stu_grade = c(kim$grade,rick$grade,dan$grade,gray$grade,ryan$grade),
  stringsAsFactors = FALSE
)
# Print the data frame.			
print(stu.data) 

x <- c(kim$sum,rick$sum,dan$sum,gray$sum,ryan$sum)
labels <- c("kim", "rick", "dan", "gray","ryan")
pie(x,labels)

#pie
x <- c(21, 62, 10, 53)
labels <- c("London", "New York", "Singapore", "Mumbai")
pie(x,labels)
#bar
barplot(c(7,12,28,3,41))

#히스토그램
hist(c(9,13,21,8,36,22,12,41,31,33,19),xlab = "Weight",col = "yellow",border = "blue")

#라인차트
plot(c(7,12,28,3,41),type = "o")

#산포도
input <- mtcars[,c('wt','mpg')]
print(input)
plot(x = input$wt,y = input$mpg,
     xlab = "Weight",
     ylab = "Milage",
     xlim = c(2.5,5),
     ylim = c(15,30),		 
     main = "Weight vs Milage"
)

#주식차트
input <- mtcars[,c('mpg','cyl')]
print(head(input))
boxplot(mpg ~ cyl, data = mtcars, xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon", main = "Mileage Data")
