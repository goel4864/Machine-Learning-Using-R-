install.packages("caTools")
library(caTools)
data=read.csv("binary.csv",header=TRUE)
data
nrow(data)
newdata=na.omit(data)   #removing NA values
sample=sample.split(newdata,SplitRatio=0.8) #splitting in train and test data 
sample
train=subset(newdata,sample==TRUE) 
test=subset(newdata,sample==FALSE)
nrow(test)
nrow(train)
matrixdata=as.matrix(train)
nrow(matrixdata)
ytrain=as.matrix(matrixdata[,1],ncol=1)
ytrain
I=diag(c(1,1,1,1),nrow=4)
I
ndata=matrixdata[,-1]
x=cbind(rep(1:nrow(ndata)),ndata)
x
lambda=10
#formula w=( (X^t x + lambda I)^(-1) )(X^t y)
a=t(x)%*%x+lambda*I  #solve(a) finds inverse of a
pred=solve(a)%*%t(x)%*%ytrain # %*% is used for matrix multiplication
pvalues=pred[1][1]+test[2]*pred[2][1]+test[3]*pred[3][1]+test[4]*pred[4][1]
pvalues

