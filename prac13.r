x=read.csv("House_Multiple_Data.csv",header=TRUE)
x1=x$Size
x2=x$Price
x3=x$Bedroom
x4=x$Servantroom
x5=x$Balconies
x6=x$House_years 
model=lm(x2~x1+x3+x4+x5+x6)
y1=coef(model)[1]
y2=coef(model)[2]
y3=coef(model)[3]
y4=coef(model)[4]
y5=coef(model)[5]
y6=coef(model)[6]
a1=as.integer(readline(prompt="Enter Size: "))
a2=as.integer(readline(prompt="Enter number of bedrooms: "))
a3=as.integer(readline(prompt="Enter number of servant rooms: "))
a4=as.integer(readline(prompt="Enter number of balconies: "))
a5=as.integer(readline(prompt="Enter house_years: "))
y=y1+y2*a1+y3*a2+y4*a3+y5*a4+y6*a5
print("Predicted Price: ")
print(y)