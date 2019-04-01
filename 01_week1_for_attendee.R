#### .=========.####
#### | [[ Week 1 ]] ####
#### .=========.####

#### 0. 수업 개요 ####
#### __ [01] 들어가며 ####

#### __ [02] 데이터 기반의 의사결정의 필요성 ####

#### __ [03] 관련 언어 및 도구 ####

#### .==================. ####

#### 1. 분석 사례 소개 ####
#### __ [01] 일상 속 데이터 분석 ####

#### .==================. ####

#### 2. 데이터 리터러시 ####
#### __ [01] 실습 문제 ####
#### _____ ● Q1-1: 통계 #####
# 특정 회사의 급여 수준을 논할 때 평균 연봉을 주로 언급한다.
# 여기서 평균 연봉을 대표값으로 사용하는 것은 적절한가?


#### _____ ● Q1-2: 시각화 #####
# 변수가 5개인 하나의 데이터세트를 시각화 한다고 하자.
# 이 때 4개의 그래프로 그리는 것과 1개의 그래프로 그리는 것은
# 어떤 차이가 있는가?


#### _____ ● Q1-3: 자연어 처리 #####
# 한국어는 영어나 일본어에 비해 분석하기 까다롭다고 한다.
# 그 이유를 고민해보고 나름의 의견을 제시하라.


#### _____ ● Q2: 그래프 #####
# 아래 그래프는 몇 차원 그래프라고 할 수 있는가?


#### _____ ● Q3: 그래프 #####
# 아래 그래프로부터 얻을 수 있는 정보를 모두 기술하시오.



#### .==================. ####

#### 3. R 기초 ####
#### __ [01] 개요 ####
#### __ [02] 설치 ####
#### __ [03] 프로그램 시작하기 ####
#### ____ ● 단축키 ####
# 실행: [Ctrl] + [Enter]
# 새 파일 열기: [Ctrl] + [o]
# 스크립트 저장: [Ctrl] + [s]
# 주석 처리: [Ctrl] + [Shift] + [c]
# 스크립트창 이동: [Ctrl] + [1]
# 콘솔창 이동: [Ctrl] + [2]
# 콘솔창 클리어: [Ctrl] + [l]
# 문서 개요 확인: [Ctrl] + [Shift] + [o]

#### __ [04] 명령어의 이해 ####
#### ____ ● 명령어 입력 ####
1 + 1
2 + 1



#### ____ ● 명령어 실행 ####



#### __ [05] 연산자 ####
#### ____ ● 할당 연산자 ####

#### ____ ● 산술 연산자 ####

#### ____ ● 논리 연산자 ####
"감자" == "고구마"
"감자" != "고구마"


#### __ [06] 기초 산술 함수 ####
#### ____ ● 산술 함수 ####
# 프롬프트(>)는 제외하고 입력합니다!
# 삼각함수
abs(3)
abs(-3)
round(24.51)
round(24.49)
round(24.51, -1)
round(24.51, 1)
floor(24.51)
ceiling(24.51)

# 어림하기


# 팩토리얼

#### ____ ● 수열 생성 ####
# 특수기호(:)를 사용한 숫자 생성
1:5
1.5:5
1.5:6
1.5:1.5


# seq() 함수를 사용한 숫자 생성
seq(from = 1, to = 3)
seq(from = 1, to = 3, by = 0.5)
seq(from = 1, to = 3, by = 1.2)
seq(from = 1, to = 3, length.out = 8)

# rep() 함수를 사용한 숫자 생성
rep(1:3, 5)
rep("안녕", 5)
?rep
#### __ [07] 기본 자료형 ####
#### ____ ● 원소 속성 ####
# ▶ 수치형(numeric): 숫자로 이루어져 있으며 정수(integer)와 실수(double)를 포함
# ▶ 문자형(character): 문자로 이루어져 있으며 그 길이에 관계없이 형식이 같음
# ▶ 팩터형(factor): 명목/순서형 변수
# ▶ 논리형(logical): TRUE와 FALSE. 즉 참/거짓 을 나타내는 형식

#### ____ ● 특수 유형 ####
# ▶ NA: 결측값(missing value, 값이 존재하지 않음)
# ▶ NULL: 데이터 유형과 자료의 길이도 0인 비어있는 값
# ▶ NaN: 수학적으로 정의가 불가한 수
# ▶ Inf: 무한값(infinite)

#### ____ ● 객체 구조 ####
# 벡터 - c()
c(1, 2, 3)
c(1, 2, "a")
aa = c(1, 2, 3)
aa[2]
aa[3] = "b"
aa[1:2]
aa[c(1,3)]


# 행렬 - matrix() 
matrix(1:6)
matrix(1:6, nrow =2)
matrix(1:6, ncol =2)
matrix(1:6, nrow =2, byrow = TRUE)

mat = matrix(1:6, nrow = 2, byrow = TRUE)
mat
mat[,3]



# 데이터 프레임 - data.frame()
data.frame(aa = 1:3,
           bb = c("a", "b", "c"))
df = data.frame(aa = 1:3,
                bb = c("a", "b", "c"))
df
df[,1]
df[1,]
# 리스트 - list()
list(aa = 1:4,
     bb = matrix(1:9, nrow = 3),
     cc = list(dd = 1:3,
               ee = letters[2:4]))
listt = list(aa = 1:4,
     bb = matrix(1:9, nrow = 3),
     cc = list(dd = 1:3,
               ee = letters[2:4]))
listt$aa
listt[[2]]
listt$cc$dd
listt$cc$dd[1]
letters


#### ____ ● 자료구조 - 이미지 ####
install.packages("imager")
library("imager")
img = load.image("sample_cat_image.jpg")
plot(img)

dim(img)

img[1:5, 1:5,, 1]

img[,,,1] = 1 - img[,,,1]
img[,,,2] = 1 - img[,,,2]
img[,,,3] = 1 - img[,,,3]
plot(img)

install.packages("beepr")
library("beepr")
beep(4)

getwd()


#### ____ ● 자료구조 - 웹페이지 ####
web = readLines("sample_webpage_text.txt")
head(web)


#### __ [08] 패키지 ####
#### ____ ● 개요

#### ____ ● 패키지 설치(인터넷 O) ####
# install.packages("beepr")

#### ____ ● 패키지 설치(인터넷 X) ####
# https://cran.r-project.org/


#### ____ ● 패키지 불러오기 ####

#### ____ ● 유용한 패키지 ####
# ▶ 데이터 조작 및 처리: dplyr, reshape2, data.table
# ▶ 그래프 등 시각화 관련: ggplot2, ggmap, ggvis, lattice, plotly
# ▶ 데이터 분석 등 기계학습 관련: CART, e1071, C50, DMwR
# ▶ 시계열 데이터 처리: lubridate, xtm
# ▶ 텍스트 처리: splitstackshape, KoNLP


#### ____ ● 재미난 패키지 ####


#### __ [09] 데이터 입력 ####
#### ____ ● 작업폴더(working directory) ####

#### ____ ● 작업폴더 확인과 설정 ####
# 작업폴더 확인 - getwd()

# 작업폴더 설정 - setwd()

#### ____ ● 데이터 가져오기 실습 - 특정 구분자 ####
aws = read.delim("AWS_sample.txt", sep = "#", stringsAsFactors = FALSE)
head(aws)

tail(aws)

head(aws, 10)

tail(aws, 10)

str(aws)
summary(aws)
nrow(aws)
ncol(aws)
dim(aws)
colnames(aws)
aws$TA
aws$TA
aws$TA[981]

#### __ [10] 데이터 확인 ####
#### ____ ● 상/하단 행 확인 ####
# head()

# tail()

#### ____ ● 객체 구조 및 변수별 기술통계 확인 ####
# str()

# summary()

# nrow()

# ncol()

# dim()

# colnames()

#### __ [11] 데이터 추출 ####
#### ____ ● 행과 열 ####

#### ____ ● '$'를 사용한 데이터 추출 ####


#### ____ ● 벡터연산을 사용한 데이터 추출 - 행 ####
aws[2, ]
aws[135, ]
aws[3:10, ]
aws[c(2, 135, 3:10), ]
#### ____ ● 벡터연산을 사용한 데이터 추출 - 열 ####
aws[,3]

aws[, 3:4]
aws[, c(1,3)]

aws[, "Wind"]
aws[, c("Wind","TA")]
aws[, c("AWS_ID", "TA")]
#### ____ ● 벡터연산을 사용한 데이터 추출 - 행열 ####
aws[1,3]
aws[2:5, c("TA", "Wind")]

aws[1:4, ]
aws[1:4, 1:4]
aws[1:4, -5]
#### __ [12] 데이터 치환/삽입 ####
aws[1, ] = -1
head(aws)

aws[1:2, ] = -33
head(aws)

aws["6", ] = -4
head(aws)

aws[c(1:2, 6), ] = -6666
head(aws)

aws[, 6] = "new"
head(aws)

aws[, ncol(aws) + 1] = "new!!!"
head(aws)
colnames(aws)
colnames(aws)[6]
colnames(aws)[6:7]
colnames(aws)[c(6, 7)] = c("aa", "bb")
head(aws)

aws[, "last_one"] = 12345
head(aws)

aaa=aws[10:13, 3:4]
bbb=aws[20:23, 3:4]
cbind(aaa,bbb)
rbind(aaa,bbb)
#### ____ ● 벡터연산을 사용한 데이터 치환 ####
# ※ 순서대로 입력하세요.


#### ____ ● 벡터연산을 사용한 데이터 삽입 ####

# Q. column 명을 바꿔봅시다.


#### __ [13] 데이터 병합 ####
#### ____ ● bind 함수를 사용한 데이터 병합 ####
aaa = aws[10:13, 3:4]
bbb = aws[20:23, 3:4]

# cbind()

# rbind()


#### __ [14] 데이터 요약 ####
#### ____ ● 개요 ####
# ▶ str(): 객체 구조 확인
# ▶ summary(): (2차원) 객체의 변수별 기술통계량 확인
# ▶ length(): 1차원 객체의 길이 계산
# ▶ unique(): 1차원 객체의 고유 원소 추출
# ▶ quantile(): 1차원 객체의 분위수 계산
# ▶ nrow(): 2차원 객체의 row 개수 계산
# ▶ ncol(): 2차원 객체의 column 개수 계산
# ▶ table(): 객체의 고유 원소 개수 계산
# ▶ aggregate(): 조건에 따른 요약 정보 계산
# ▶ apply(): (2차원) 객체의 row 또는 column 기준 일괄 계산


#### ____ ● table() 함수를 사용한 표 만들기 ####
install.packages("ggplot2")
data("diamonds", package = "ggplot2")
head(diamonds, 3)
table(diamonds$cut, diamonds$clarity)

table(diamonds$cut)
prop.table(table(diamonds$cut))
prop.table(table(diamonds$cut)) * 100
round(prop.table(table(diamonds$cut)) * 100, 2)

tb = table(diamonds$cut, diamonds$clarity)
tb
sum(tb) == nrow(diamonds)

prop.table(tb)
prop.table(tb, margin = 1)
rowSums(prop.table(tb, margin = 1))
prop.table(tb, margin = 2)
colSums(prop.table(tb, margin = 2))




#### ____ ● 데이터 준비 ####
data("airquality")
df = airquality
head(df, 2)

unique(df$Month)
length(unique(df$Month))
length(c(2, 4, 6))

quantile(df$Wind)
quantile(df$Wind, probs = 0.01)
quantile(df$Wind, probs = 0.99)
quantile(df$Wind, probs = c(0.05, 0.95))
#### ____ ● 함수의 활용 ####
# unique()

# quantile()


#### __ [15] 문자열 데이터 처리 ####
#### ____ ● 기본 처리 ####
# 데이터 준비
sample = data.frame(aa = c("abc_sdfsdf", "abc_KKdfsfsfs", "ccd"),
                    bb = 1:3,
                    stringsAsFactors = FALSE)
sample

nchar(sample[1,1])
which(sample[,1]=="ccd")
which(c(TRUE, FALSE, TRUE))
toupper(sample[1,1])
tolower(sample[2,1])
# 문자 개수 세기

# 특정 문자 위치 확인

# 대소문자 변환


#### ____ ● 응용 ####
install.packages("splitstackshape")
library("splitstackshape")
cSplit(sample, splitCols = "aa", sep = "_")
cSplit(sample, splitCols = "aa", sep = "_", drop = FALSE)

# 문자열 분리
# cSplit <- S 대문자 입니다.


# 문자 결합
paste0(sample[,1], sample[,2])
paste(sample[,1], sample[,2], sep = " HAHAHA ")

paste("010", "9507", "4925", sep = "-")
paste("010", "9507", "4925", collapse = "-")

paste(c("010", "9507", "4925"), sep = "-")
paste(c("010", "9507", "4925"), collapse = "-")

substr(sample$aa, 1, 2)
substr(sample$aa, start = 1, stop = 2)

# 특정 위치 문자 추출
substr(sample[,1], 1, 2)

#### __ [16] 반복문 조건문 ####
#### ____ ● 반복문 - for() ####
# for() 함수
for(number in 1:3){
   print(number)
}
for(number in letters){
  print(number)
  Sys.sleep(1)
  }
for(number in c(1, 3, 9)){
   print(number)
   }
for(num in 3:6){
   print(num*num)
   }



# 데이터 준비
df_1 = data.frame(aa = c("a", "b", "c", "d"),
                  bb = 1:4)
df_1

# 응용
for(num in 1:4){
    df_1[num, "new_column"] = num * 2
    print(df_1)
    Sys.sleep(2)
}
df_1

#### ____ ● 조건문 - if() ####
# if() 함수
n = 3
if(n == 3){
  print("n은 3입니다")
  } else {
  print("n은 3이 아닙니다")
}


n = 5
if(n == 3){
  print("n은 3입니다")
  } else {
  print("n은 3이 아닙니다")
}

# 데이터 준비
df_1 = data.frame(aa = c("a", "b", "c", "d"),
                  bb = 1:4)
df_1

# 응용
for(n in 1:4){
  if(n >=3){
    print(df_1[n, "bb"])
  } else {
    print("응?")
  }
}
#### ____ ● 조건 연산자 ####
# 데이터 준비
df_1 = data.frame(aa = letters[1:4],
                  bb = 1:4)
df_1

# 실습
df_1[df_1$bb >= 3, ]
df_1[df_1$aa == "b", ]
df_1[df_1$aa != "b", ]
df_1[(df_1$bb == 1) | (df_1$bb == 4), ]
df_1[df_1$bb %in% c(1, 4), ]


#### __ [17] 파일 입출력 ####
#### ____ ● 파일 불러오기 ####
df = read.csv("bike.csv")
head(df, 2)

library("data.table")
df = fread("bike.csv", nrows = 4, select = c(1:3, 5), skip = 1)
df

head(df, 2)

library("readxl")
df = read_excel("파일명", sheet = 2)
head(df, 2)

#### ____ ● 다양한 데이터 불러오기 ####
# life_expectancy

# population_country

# rating_chocobar

# rating_ramyun

# store_apple

#### ____ ● 파일 저장하기 ####
write.csv(df, "wirte_csv_basic.csv", row.names = FALSE)
