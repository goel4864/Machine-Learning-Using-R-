x=read.csv("House.csv",header=TRUE)
x1=x$size
x2=x$price
relation=lm(x2~x1)
value=as.integer(readline(prompt="ENTER THE SIZE OF HOUSE : "))
y=data.frame(x1=value)
result = predict(relation,y)
print("The price of the house is : ")
print(result )