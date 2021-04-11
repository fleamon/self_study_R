# 변수대입
a = c(1, 2, 3)
a
# 변수대입
b <- 5
b
# 변수 리스트 대입
c <- c('db', 'study')
c
# 길이 출력
length(a)
length(b)
length(c)
# 반복
a <- 1:100
a
# 숫자, 반복, 문자열 함께 가능
x <- c(1, 2, 1:5, 'r study')
x
# 연산(반복연산)
a <- c(1, 2, 3)
b <- c(1)
a+b
# 연산(반복연산, 재사용의 법칙연산)
b <- c(1, 2)
a+b
# 연산자쓰고 ()안에 숫자쓰면 연산가능
"*"(2, 6)
# rep쓰고 (a, b) 면 a를 b번반복한다.
rep(2, 4)
rep(2, 5)
x <- c(5, 6)
x
rep(x, 3)
y <- rep(x, 3)
y
rep(1:5, 2)
rep(c(3, 4), each=2)
rep(c(x, 2), each=3)
rep(c(1, 2),each=3)
rep(c(1, 2),3,each=3)
# indexing
y <- c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
y[c(3)]
y[c(1, 3, 5, 7, 9)]
y[c(1:3)]
z <- y[c(1:3)]
z
z <- y[c(1:3)][-2]
z
z <- y[c(1:3)][+2]
z
z <- y[c(1:3)][+3]
z
# 치환
x <- 1:20
x
x[6] <- 0
x
x[8] <- 88
x
x[] <- 7
x
x[1, 3, 5] <- 10 # error
# 범위나 값의 순서는 항상 vector c()를 써야함
x[c(1, 3, 5)] <- 10
x
1:100
# seq : 반복출력 , by는 간격
# length는 동일한 간격으로 나누어진 개수
seq(from=1, to=100)
seq(from=1, to=100, by=5)
seq(from=0.1, to=2, length=10)
# round(반올림)
y <- c(1, 2, 8, 5.2)
round(y)
x <- c(5.2, 5.5, 5.4, 5.8)
round(x)
# sqrt
1:10
sqrt(1:10)
# 결측치 : NA(존재하지만 확실하지않은값)
#          , NULL(존재하지 않는값)
x <- c(1, 2, 3, NA, 5)
y <- c(1, 2, 3, NULL, 5)
mean(x)
mean(y)
# na remove true
mean(x, na.rm = T)
