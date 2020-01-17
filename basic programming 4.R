#written by Diane on 14/1/2020
setwd("~/laterite")
n<-10
#print nos from 1 to n
for(i in 1:n){print(i)}
for(i in 1:n){
  print(i)
}
#print square of numbers 1 to n
for(i in 1:n){print(i*i)}
#another way of doing the same
for(i in 1:n){print(i^2)}
#sum nos from 1 to n
n<-10
sm<-0
for(i in 1:n){
  sm<-sm+i 
  print(sm)
  }

#print the cube of numbers from 1 to n and their sum
n<-10
sm1<-0
for(i in 1:n){
  print(i^3)
  sm1<-sm1+i^3}
print(sm1)
#alternative
n<-10
sm2<-0
for(i in 1:n){
  s<-i^3
  print(s)
  sm2<-sm2+s
}
print(sm2)

#now creating datframe using the same data above
n<-10
sm2<-0
result<-data.frame()
for(i in 1:n){
  s<-i^3
  #print(s)
  sm2<-sm2+s
  frame<-data.frame(i,s)
  result<-rbind(result,frame)
}
print(result)

#to name i as number and s as cube
library(openxlsx)
n<-10
sm2<-0
result<-data.frame()
for(i in 1:n){
  s<-i^3
  #print(s)
  sm2<-sm2+s
  frame<-data.frame(i,s)
  names(frame)<-c("number","cube")
  result<-rbind(result,frame)
}
print(result)

#write the data.frame in excel sheet
write.xlsx(result,"~/laterite")

#to have now 3 columns,number,cube,squares

library(openxlsx)
n<-100
sm2<-0
result<-data.frame()
for(i in 1:n){
  s<-i^3
  q<-i^2
  #print(s,q)
  sm2<-sm2+s+q
  frame<-data.frame(i,s,q)
  names(frame)<-c("number","cube","square")
  result<-rbind(result,frame)
}
print(result)

#write the data.frame in excel sheet
write.xlsx(result,"~/laterite")

#number,square,cube,square root
library(openxlsx)
n<-100
sm2<-0
result<-data.frame()
for(i in 1:n){
  s<-i^3
  q<-i^2
  p<-sqrt(i)
  #print(s)
  sm2<-sm2+s+q+p
  frame<-data.frame(i,s,q,p)
  names(frame)<-c("number","cube","square","sqrt")
  result<-rbind(result,frame)
}
print(result)

#write the data.frame in excel sheet
write.xlsx(result,"~/laterite/number_cube_square_sqrt.xlsx")

##assignment still on the same as above
library(openxlsx)
n<-seq(5,500,5)
n
sm2<-0
result<-data.frame()
for(i in seq(5,500,5)){
  s<-i^3
  q<-i^2
  p<-sqrt(i)
  #print(s)
  sm2<-sm2+s+q+p
  frame<-data.frame(i,s,q,p)
  names(frame)<-c("number","cube","square","sqrt")
  result<-rbind(result,frame)
}
print(result)

#write the data.frame in excel sheet
write.xlsx(result,"~/laterite/number_cube_square_sqrt_500.xlsx")
