
bmi <- function(hei,wei){
  bmi <-wei/((hei^2)/10000)
  return(if(bmi<18.5) "저체중" else
    if(18.5<=bmi && bmi<23) print("정상") else
      if(23<=bmi && bmi<25) print("비만 전단계") else
        if(25<=bmi && bmi<30) print("1단계 비만") else
          if(30<=bmi && bmi<35) print("2단계 비만") else
            print("3단계 비만"))
}


res<-bmi(180,55)
bmi <-round(55/((160^2)/10000),2)
cat(bmi)
cat(res)


bmi <- toString(sample(50:100,1,replace=TRUE)
                /(sample(160:180,1,replace=TRUE)^2/10000))
if(bmi<18.5) "저체중" else
  if(18.5<=bmi && bmi<23) print("정상") else
    if(23<=bmi && bmi<25) print("비만 전단계") else
      if(25<=bmi && bmi<30) print("1단계 비만") else
        if(30<=bmi && bmi<35) print("2단계 비만") else
          print("3단계 비만")