help("solve")
?solve
objects("Hellow WORLD !!")
a <- 3
a
B <- 4
C <- a - B
a<-c(1,2,3,4)
C
x<-c(1,2,3,4,5,6,7,8,9,10)
sum(x)
sum((x-mean(x))^2/length(x)-1)
x <- seq(length=10, from=1,by=1) 
sum(seq(length=100, from=1,by=1))

#가위는 0, 바위 1, 보자기 2
my <-0
com <- sample(0:2, 1, replace = TRUE)
#if else 사용법

if(my==com)print("비김")else
  if((my+com==1&my==1)||(my+com==2&my==0)||(my+com==3&my==2))print("승리")else
    print("패배")
com

# switch
com <- sample(1:3,1,replace =TRUE)
user <-2
cat('컴퓨터 :',com)
res <- com -user
cat('컴퓨터 :' ,res)
print(switch(
  toString(sample(1:3,1,replace = TRUE) - user),
  '-2' = "승리",
  '1' = "승리",
  '-1' = "패배",
  '2' = "패배",
  '0' = "비김"
))
   
hei <- 180
wei <- 55
res <- hei^2
print(swtich(
  res,
  
))

c(1:10)
seq(from=1, length=10, by=2)

seq(1,10,2)

rep(1:5)

rep(1:5, each=2)

rep(1:5,each=2,times=3)
  
rep(1:5, each=2, times=3, len=10)


# R-OBJECTS : vecotr, list, matric, array, factor, date frame
# Vector의 6개타입 : logical(T,F), numeric(실수), Integer(정수), 
# complex(허수), character(문자열), raw(주소값)

num1 <- 2
num2 <- 3
op <- "+"
print(switch(op,
             "+" = num1+num2,
             "-" = num1-num2,
             "/" = num1%/%num2,
             "*" = num1*num2,
             "%" = num1%%num2))

for (i in 1:5){
  if(i==5) cat(i) else cat(i,"+")}

x<-0
for(i in 1:100){
  if(i==100)
    cat(i,"=",sum(seq(1,100,2))-sum(seq(2,100,2)))
  else if(i%%2==0)
    cat(i,"+")
  else
    cat(i,"-")
}

nam <- "홍길동"
kor <- 90
eng <- 50
math <- 90

#이름 총점 평균 학점
   
cat(nam,
    sum(kor,eng,math),
    round(sum(kor,eng,math)/3,2),
    switch(
    toString(sum(kor,eng,math)/3/10),
            "10" = "a",
            "9" = "a",
            "8" = "b",
            "7" = "c",
            "6" = "d",
            "e")
          )

  ?mean

myGrade3 <- function(){
  subject <- c("국어", "영어", "수학")
  i <- 1
  print("이름을 입력하세요")
  name <- as.character(readline())
  score <- c(0,0,0)
  for(i in 1:3){
    cat(subject[i], "점수를 입력하세요")
    score[i] <- as.integer(readline())
  }
  cat("이름: ", name, "총점: ", sum(score), "평균: ", round(sum(score)/3,2), "등급: ", 
      switch(
        toString(round(sum(score)/3/10)),
          "10" = "a",
           "9" = "a",
           "8" = "b",
            "7" = "c",
           "6" = "d",
           "e"))
}
myGrade3()
                
  


