q5=function()
{
  m1=matrix(c(1,2,3,4),nrow=4,ncol=4,byrow=TRUE)
  m2=matrix(c(6,1,3,9),nrow=4,ncol=4,byrow=TRUE)
  repeat{
  print("Choose an operation to perform :-")
  print("a-Compute size of a matrix")
  print("b-Size of a row")
  print("c-Size of a column")
  print("d-Load data from a textfile")
  print("e-Store matrix data to a text file")
  print("f-Finding out variables and their features in the current scope")
  ch=readline(prompt="Enter your choice : ")
  switch(ch,a=print(dim(m1)),
            b=print(nrow(m1)),
            c=print(ncol(m1)),
            d=print(read.table(file.choose(),header=T)),
            e=write.table(m1,file="b.txt",row.names=F),
            f=print(environment())
         )
  p=readline(prompt="Enter 'Y' if you want to continue: ")
  if(p!='Y'&&p!='y')
    break
  }
}