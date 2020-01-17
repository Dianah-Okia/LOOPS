
#program for reward system for students
total<-0
reward<-data.frame()
repeat{total<-0
students<-as.character(readline("is there a student to enter marks?: "))
if(students=="yes"){
  name<-as.character(readline("enter the student name: "))
  unit_no<-as.integer(readline("enter the unit marks"))
  for(i in 1:unit_no){
    units<-as.integer(readline("enter marks"))
  total<-total+ units
  score<-total/unit_no
  }
if(score<40){
  gift<-"work harder"
}else{gift<-"money"
}
}else{
  break
}
frame<- data.frame(name,units,total,score,gift)
names(frame)<- c("name","units","total","score","reward")
reward<-rbind(reward,frame)
}

#still on reward system

total<-0
reward<-data.frame()
repeat{total<-0
students<-as.character(readline("is there a student to enter marks?: "))
if(students=="yes"){
  name<-as.character(readline("enter the student name: "))
  unit_no<-as.integer(readline("enter the no of units"))
  for(i in 1:unit_no){
    units<-as.integer(readline("enter marks"))
  total<-total+ units
  score<-total/unit_no
  }
  if(score<40){
    gift<-"work harder"
  }else if(score>=40 & score< 55){gift<-"textbook"
  }else if(score>=55 & score<70){gift<-"ksh. 2000"
  }else{gift<-"ksh. 8000"
  }
}else{
  break
}
frame<- data.frame(name,units,total,score,gift)
names(frame)<- c("name","units","total","score","reward")
reward<-rbind(reward,frame)
}
reward

#to add the are you sure question ***to be done tomorrow

