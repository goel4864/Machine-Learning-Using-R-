q6=function()
{
  m1=matrix(c(1,2,3,4),nrow=4,ncol=4,byrow=TRUE)
  m2=matrix(c(6,1,3,9),nrow=4,ncol=4,byrow=TRUE)
  repeat{
  print("Choose an operation to perform :- ")
  print("a-Transpose")
  print("b-Addition")
  print("c-Subtraction")
  print("d-Multiplication")
  ch=readline(prompt="Enter choice : ")
  switch(ch,a=print(t(m1)),
            b=print(m1+m2),
            c=print(m1-m2),
            d=print(m1%*%m2)
         )
  c=readline(prompt = "Enter 'Y' if you want to continue: ")
  if(c!='Y'&&c!='y')
    break
  }
}