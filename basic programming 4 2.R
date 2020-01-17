#if conditional
#print nos divisible by 3 or 5
n<-20
for(i in 1:n){
  if(i%%3==0|i%%5==0)
    print(i)
}

#print nos divisible by 3 and 5
n<-20
for(i in 1:n){
  if(i%%3==0&i%%5==0)
    print(i)
}
#nos not divisible by 3
n<-20
for(i in 1:n){
  if(i%%3!=0)
    print(i)
}

# reward system for exam results
s_n<-2 #student number
units<-5 #no of units
data<-matrix(1:(s_n*units), nrow=units)
data
for(i in 1:s_n){
  name<-readline("enter the students name  ")
  for(j in 1:units){
    marks<-readline("enter marks")
    marks<-as.integer(marks)
    data[j,i]<-marks
  }
}

#hiding for name and data

s_n<-2 #student number
units<-5 #no of units
data<-matrix(1:(s_n*units), nrow=units)
#data
for(i in 1:s_n){
  #name<-readline("enter the students name  ")
  #data[i,j]<-name
  for(j in 1:units){
    marks<-readline("enter marks")
    marks<-as.integer(marks)
    data[j,i]<-marks
  }
}
mean_score<-apply(data,2,mean)
score<-apply(data,2,mean)
if(score<40){
  data.frame(names,score,reward)
}

#program for reward system for students
total<-0
reward<-data.frame()
repeat{total<-0
students<-as.character(readline("student to enter marks?: "))
if(student=="yes"){
  name<-as.character(readline("enter the student name: "))
  unit_no<-as.integer(readline("enter the unit marks"))
  total<-total+ units
  score<-total/unit_no
}
if(score<40){
  gift<-"work harder"
}else{gift<-"money"
}
else{
  break
}
frame<- data.frame(name,units,total,score,gift)
names(frame)<- c("name","units","total","score","reward")
reward<-rbind(reward,frame)
}