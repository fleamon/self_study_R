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
# filtering
# vector에서 조건을 만족시키는 것을 확인
z <- c(5, 2, -3.8)
# 벡터 [] 를 사용하면 값 계산하여 대입
zz <- z[z*z>8]
zz
# 벡터 [] 를 사용하지않으면 단순 boolean
zzz <- z*z>8
zzz

# 행렬(matrix)만들기
matrix(1:8, nrow = 2, ncol = 4) # 1:6을 2행 4열로
matrix(1:6, 2, 3) # nrow, ncol은 생략가능
matrix(1:10, 5) # 행만 지정해줘도 됨

# 행렬 filtering
y <- matrix(c(1, 2, 3, 4), 2)
y
y[2, 1] # 2행1열확인
y[, 1] # 1열 확인
y <- matrix(1:8, 4)
y[3,] # 3행 확인

# 행렬에 값 삽입
y <- matrix(nrow = 2, ncol = 2) # create empty matrix
y
y[1, 1] <- 1
y[1, 2] <- 2
y[2, 1] <- 3
y[2, 2] <- 4
y

# 행렬값은 행부터 들어감
m <- matrix(c(1, 2, 3, 4, 5, 6), 2) # 행이 넘어가면서 삽입
m
m <- matrix(c(1, 2, 3, 4, 5, 6), 2, byrow = T) # 열이 넘어가면서 삽입
m

m <- matrix(c(1, 1, 8, 12), 2)
m
m[, 2] <- matrix(c(0, 122), 2)
m

# cbind( column 추가), rbind( row 추가)
kids <- c("jack", "jill")
ages <- c(10, 15)
d <- data.frame(kids, ages, stringsAsFactors = F)
d
d <- rbind(d, list("laura", 13))
d
fat <- c(40, 45, 50)
d <- cbind(d, fat)
d

# list
j <- list(name="sunnie", salary=550, single=T)
j
jalt <- list("joe", 1000, F) # 변수이름 없음
jalt
z <- list() # init list(empty)
z
j$salary
xx <- list(x=c(1, 2, 3, 4, 5), y=c(6, 7, 8, 9, 10))
xx
xx$x <- 1
xx
xx$x <- c(1, 1, 1, 1, 1)
xx
z <- list(a="abc", b=12)
z
z$c <- "hi"
z
z[4] <- 30
z
z[4] <- 20
z
z[5:7] <- c(FALSE, FALSE, FALSE)
z
z$b <- NULL
z
# list in list
j <- c(list("joe", 1000, T), list(c(1, 2, 5)))
j
a <- list(x=1:3, y=25:29)
a
# apply : for
l <- lapply(a, median) # lapply : for로 나온 결과를 list로
l
s <- sapply(a, sd) # sapplly : for로 나온 결과를 simple하게
s
is(l)
is(s)

b <- list(u=5, v=12)
b
c <- list(v=13)
c
a <- list(b, c)
a
