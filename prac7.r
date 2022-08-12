q7=function()
{
  m=c()
  r=as.integer(readline(prompt="Enter row size: "))
  c=as.integer(readline(prompt="Enter column size: "))
  print("Enter the matrix by row")
  n=r*c
  for(i in 1:n)
  {
    m[i]=as.integer(readline(prompt="Enter element: "))
  }
  m1=matrix(m,nrow=r,ncol=c,byrow=TRUE)
  print("The entered matrix is")
  print(m1)
  
  repeat{
  print("Choose an operation to perform:")
  print("a-Absolute values of matrix")
  print("b-Negative values of matrix")
  print("c-Adding a row in the matrix")
  print("d-Removing a row from the matrix")
  print("e-Adding a column in the matrix")
  print("f-Removing a column from the matrix")
  print("g-Maximum in the row of the matrix")
  print("h-Maximum in the column of the matrix")
  print("i-Minimum in the row of the matrix")
  print("j-Minimum in the column of the matrix")
  print("k-sum of all the elements in the matrix")
  ch=readline(prompt="Enter choice: ")
  switch(ch,a=print(abs(m1)),
            b=print(-m1),
            c=addrow(m1,r),
            d=remrow(m1),
            e=addcol(m1,c),
            f=remcol(m1),
            g=maxrow(m1),
            h=maxcol(m1),
            i=minrow(m1),
            j=mincol(m1),
            k=print(sum(m1))
         )
  opt=readline(prompt = "Enter 'Y' if you want to continue: ")
  if(opt!='Y'&&opt!='y')
    break
  }
}

addrow=function(m1,r)
{
  print("Enter elements of the row to be added/n")
  v=c()
  for(i in 1:r)
  {
    v[i]=as.integer(readline(prompt="Enter element: "))
  }
  k=rbind(m1,v)
  print("The new matrix is")
  print(k) 
}

remrow=function(m1)
{
  ch=as.integer(readline(promp="Enter the row number to delete: "))
  m1=m1[-ch,]
  print(m1)
}
addcol=function(m1,c)
{
  print("Enter elements of the column to be added/n")
  v=c()
  for(i in 1:c)
  {
    v[i]=as.integer(readline(prompt="Enter element: "))
  }
  k=cbind(m1,v)
  print("The new matrix is")
  print(k) 
}

remcol=function(m1)
{
  ch=as.integer(readline(prompt="Enter the coloumn number to delete: "))
  m1=m1[,-ch]
  print(m1)
}

maxrow=function(m1)
{
  ch=as.integer(readline(promp="Enter the row from which u want to find max: "))
  k=max(m1[ch,])
  print(k)
}

maxcol=function(m1)
{
  ch=as.integer(readline(promp="Enter the column from which u want to find max: "))
  k=max(m1[,ch])
  print(k)
}

minrow=function(m1)
{
  ch=as.integer(readline(promp="Enter the row from which u want to find minimum: "))
  
  k=min(m1[ch,])
  print(k)
}

mincol=function(m1)
{
  ch=as.integer(readline(promp="Enter the column from which u want to find minimum: "))
  k=min(m1[ch,])
  print(k)
}