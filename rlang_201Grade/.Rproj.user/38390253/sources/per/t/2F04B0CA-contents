df_win_count <- dbGetQuery(conn,
"SELECT 
    A.WINNER,
                           COUNT(A.WINNER) WIN_COUNT
                           FROM(SELECT
                           K.SCHE_DATE 경기날짜,
                           CASE
                           WHEN K.HOME_SCORE > K.AWAY_SCORE THEN HT.TEAM_NAME
                           WHEN K.AWAY_SCORE > K.HOME_SCORE THEN AT.TEAM_NAME
                           ELSE '무승부'
                           END WINNER
                           FROM SCHEDULE K
                           JOIN TEAM HT
                           ON K.HOMETEAM_ID LIKE HT.TEAM_ID
                           JOIN TEAM AT
                           ON K.AWAYTEAM_ID LIKE AT.TEAM_ID
                           WHERE
                           K.GUBUN LIKE 'Y'
                           AND K.SCHE_DATE LIKE '2012%'
                           )A
                           WHERE A.WINNER NOT LIKE '무승부'
                           GROUP BY A.WINNER
                           ORDER BY WIN_COUNT DESC
                           ")
df_win_count 

barplot(df_win_count$WIN_COUNT, names.arg = df_win_count$WINNER)


df_seat_count <-  dbGetQuery(conn,"SELECT
                             ROWNUM ,
                             A.*
                               FROM(SELECT
                                    STADIUM_NAME STADIUM,
                                    SEAT_COUNT NSEAT
                                    FROM
                                    STADIUM
                                    ORDER BY SEAT_COUNT DESC) A")
pie(df_seat_count$NSEAT,df_seat_count$STADIUM)

#20

df_month_count <- dbGetQuery(conn, "select
    (select count(*) from schedule sc where sc.sche_date like '201201%') JAN,
                             (select count(*) from schedule sc where sc.sche_date like '201202%') FEB,
                             (select count(*) from schedule sc where sc.sche_date like '201203%') MAR,
                             (select count(*) from schedule sc where sc.sche_date like '201204%') APL,
                             (select count(*) from schedule sc where sc.sche_date like '201205%') MAY,
                             (select count(*) from schedule sc where sc.sche_date like '201206%') JUN,
                             (select count(*) from schedule sc where sc.sche_date like '201207%') JUL,
                             (select count(*) from schedule sc where sc.sche_date like '201208%') AUG,
                             (select count(*) from schedule sc where sc.sche_date like '201209%') STM,
                             (select count(*) from schedule sc where sc.sche_date like '201210%') OCT,
                             (select count(*) from schedule sc where sc.sche_date like '201211%') NOV,
                             (select count(*) from schedule sc where sc.sche_date like '201212%') DCM
                             from dual")
df_month_count
input <- mtcars[,c('month','number')]
print(input)
plot(x = df_month_count$JAN ,y = ,
     xlab = "Weight",
     ylab = "Milage",
     xlim = c(2.5,5),
     ylim = c(15,30),        
     main = "Weight vs Milage"
)



df_seat <- dbGetQuery(conn,
                      "SELECT
                      ROWNUM NO,
                      A.*
                      FROM (
                      SELECT
                      S.STADIUM_NAME STADIUM,
                      S.SEAT_COUNT SEATS
                      FROM STADIUM S
                      ORDER BY
                      S.SEAT_COUNT DESC
                      ) A"        
                     )
df_seat
df_seat[,2]
df_seat[,1]
pie(df_seat[,1],df_seat[,2],col=rainbow(20),radius =2.5)
pie(df_seat$SEATS,df_seat$STADIUM,col=rainbow(20),radius =2.5
    ,density = 100,angle = 45)


# SQL30 바차트 : 구단승리순으로 순위매기기
query = "SELECT A.WINNER,
COUNT(A.WINNER) WIN_COUNT
FROM(SELECT
K.SCHE_DATE 경기날짜,
CASE
WHEN K.HOME_SCORE > K.AWAY_SCORE THEN HT.TEAM_NAME
WHEN K.AWAY_SCORE > K.HOME_SCORE THEN AT.TEAM_NAME
ELSE '무승부'
END WINNER
FROM SCHEDULE K
JOIN TEAM HT
ON K.HOMETEAM_ID LIKE HT.TEAM_ID
JOIN TEAM AT
ON K.AWAYTEAM_ID LIKE AT.TEAM_ID
WHERE
K.GUBUN LIKE 'Y'
AND K.SCHE_DATE LIKE '2012%'
)A
WHERE A.WINNER NOT LIKE '무승부'
GROUP BY A.WINNER
ORDER BY WIN_COUNT DESC"
rs <- dbGetQuery(conn, query)
barplot(rs[,2],names.arg=rs[,1], main = "승리수")
