## dplyr
# filter() 행추출
# select() 열추출
# arrange() 정렬
# mutate() 변수추가
# summarise() 통계치산출
# group_by() 집단별로 나누기
# left_join() 데이터합치기(열)
# bind_rows() 데이터합치기(행)
# view() 뷰어창에서 데이터 확인 !! 주의... v가 대문자
install.packages("dplyr")
library(dplyr)
path <- getwd() #working directory 의 약자 지금 작업하는 위치 
path
setwd("csv_exam") #working directory 변경
df_exam <- read.csv("csv_exam.csv") 
#안에 문자면 stringAsFactors = F 로 옆에 줘야함 
is.data.frame(df_exam)
View(df_exam)
df_exam <- rename (df_exam, userid=id)
df_exam$total <- df_exam$math+df_exam$english+df_exam$english
df_exam$avg <- mean(df_exam$total)
df_exam$grade <- ifelse(
  df_exam$avg >= 90, "A",
  ifelse(df_exam$avg >=80, "B",
       ifelse(df_exam$avg >=70, "C",
          ifelse(df_exam$avg >=60, "D","E")
              ))
)
(df_exam)





  