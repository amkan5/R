install.packages("ggplot2") #rs에데려오는거
library(ggplot2) #import같은 느낌

read.csv(file = "C:\\Users\\1027\\JavaWorkspace\\RSpace\\2013년_전년대비_시간대별_교통사고_사망자_현황.csv", header = TRUE, sep = ",", quote = "\"", dec = ".", fill = TRUE, comment.char = "")


# manufacturer
# model
# model name
# 
# displ
# engine displacement, in litres
# 
# year
# year of manufacture
# 
# cyl
# number of cylinders
# 
# trans
# type of transmission
# 
# drv
# f = front-wheel drive, r = rear wheel drive, 4 = 4wd
# 
# cty
# city miles per gallon
# 
# hwy
# highway miles per gallon
# 
# fl
# fuel type
# 
# class
# "type" of car



##### mpe 데이터 파악하기
# data = apg, x축에 변수 지정해 그래프 생성

x <- c("2","2","3","1","4","4","4","4")
x
qplot(x)
rm(x) #remove

qplot(data = mpg, x= hmy)
# x축 cty
qplot(data = mpg, x=cty)

# 데이터베이스 값은 함부로 바꿀수없다
# 그러나 데이터프레임에서는 바꿔서 사용해도 된다. 

# mpg 데이터를 데이터프레임으로 만든다.
mpg <- as.data.frame(ggplot2::mpg) #1 데이터프레임으로 출력
head(mpg) #상위 5개만 보는거
tail(mpg) #맨밑 5개 보는거
dim(mpg) ## 234행 11열 (행열이나옴)
str(mpg) # 11개의 변수 타입,
summary(mpg)
# 통합 여비 변수 생성
mpg$total <- (mpg$cty +mpg$hwy) / 2
head(mpg)

#통합연비변수평균
mean(mpg$total)

#요약
summary(mpg$total)
hist(mpg$total)

# total 연비의 평균과 중앙값이 약 20이다.
# total 연비의 20~25 사이에 해당하는 자동차 모델이 가장 많다
# 대부분 25 이하이고, 25를 넘기는 자동차는 많지않다


##합격 판정 변수 만들기
# total이 20이상이면 pass, 미만이면 fail 을 부여하는 test 라는 변수를 생성

mpg$test <- ifelse(mpg$total >= 20, "pass", "fail")
head(mpg, 20)
 #합격판정을 받은 자동차 수 살펴보자
table(mpg$test)
qplot(mpg$test)

#중첩조건문
#total 30 이상이면 A
#TOTAL 20 ~ 29 이면 B
#total 20 미만이면 c


mpg$grade <- ifelse(
  mpg$total >= 30, "A",
  ifelse(mpg$total >= 20, "B",
         ifelse(mpg$total >= 10, "C","D")
))

head(mpg,20)
table(mpg$grade)
qplot(mpg$grade)

mpg$grade <- ifelse(
  mpg$total >= 30, "A",
  ifelse(mpg$total >= 20, "B",
         ifelse(mpg$total) >= 10, "C","D")
)

# 변수명 변경
mpg <- rename(mpg,company <- manufecture)

# ggplot2 패키지에는 미국 동북중부 437개 지역의 
# 인구통계 정보를 담은 midwest 라는 데이터가 
# 들어 있습니다.
# midwest 데이터를 사용해 데이터 분석 문제를 해결하시오
# 1.  populator 변수를 total 로, popasian 변수를 
# asian 으로 수정하세요
# 2. total, asian 변수를 이용해 '전체 인구 대비 아시아 인구 
# 백분율' 파생변수를만들고, 히스토그램을 만들어 도시들이
# 어떻게 분포하는지 살펴보시오.
# 아시아 인구 백분율 전체 평균을 구하고, 평균을 초과하고
# 'large' , 그 외에는 'small' 을 부여하는 파생변수를 만드시오.
# 'large' 와 'small' 에 해당하는 지역이 얼마나 되는지 
# 빈도표와 빈도 막대 그래프를 만들어 확인해 보세요.

df_midwest <- as.data.frame(ggplot2::midwest)
head(df_midwest)
#1. 
df_midwest$total <- df_midwest$poptotal
df_midwest$asian <- df_midwest$popasian
#2. 백분율
df_midwest$r <- df_midwest$popasian/df_midwest$poptotal
summary(df_midwest$r)
#2. 히스토그램
hist(df_midwest$r)
df_midwest$large <- ifelse(
  df_midwest$r > mean(df_midwest$r), "large","small")
#3. 빈도표와 빈도막대
table(df_midwest$large)
qplot(df_midwest$large)
write.csv(df_midwest, file = "update_midwest.csv")

df_midwest <- subset(df_midwest,select = -asian) ##삭제

