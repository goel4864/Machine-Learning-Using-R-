x=read.csv("student_data.csv",header=TRUE)
x1=x$Height
x2=x$Weight
x3=x$Age
x4=x$Eyesight
x5=x$Class_standard
y=x$Eligible_for_activity
out=glm(formula=y~x1+x2+x3+x4+x5,data=x,family=binomial)
a1=as.integer(readline(prompt="Enter Height: "))
a2=as.integer(readline(prompt="Enter Weight: "))
a3=as.integer(readline(prompt="Enter Age: "))
a4=as.integer(readline(prompt="Enter Eyesight: "))
a5=as.integer(readline(prompt="Enter Class Standard: "))
a=data.frame(x1=a1,x2=a2,x3=a3,x4=a4,x5=a5)
print(a)
r=predict(out,a,type="response")
print(r)
