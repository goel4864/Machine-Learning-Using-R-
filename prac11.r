q11=function()
{
  m=matrix(data=c(1:9),nrow=3,ncol=3)
  n=matrix(data=c(6:14),nrow=3,ncol=3)
  print("MATRIX 1")
  print(m)
  print("MATRIX 2")
  print(n)
  
  repeat{
  print("Choose an operation to perform :- ")
  print("a-Transpose of matrix 1")
  print("b-Transpose of matrix 2")
  print("c-Addition")
  print("d-Subtraction")
  print("e-Multiplication")
  ch=readline(prompt="Enter choice : ")
  switch(ch,a=print(t(m)),
            b=print(t(n)),
            c=print(m+n),
            d=print(m-n),
            e=print(m%*%n)
         )
  opt=readline(prompt = "Enter 'Y' if you want to continue: ")
  if(opt!='Y'&&opt!='y')
    break
  }
}