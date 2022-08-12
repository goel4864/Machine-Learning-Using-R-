mat=function()
{
  r=as.integer(readline(prompt="Enter row size : "))
  c=as.integer(readline(prompt="Enter column size : "))
  repeat{
  print("Choose an operation to perform :- ")
  print("a-Single dimensional array")
  print("b-Multi dimaensional array")
  print("c-Generate a matrix of all 1s")
  print("d-Genarate a matrix of all 0s")
  print("e-Genarate a diagonal matrix")
  print("f-Genarate a random matrix")
  ch=readline(prompt="Enter your choice : ")
  switch(ch,a=single(r,c),
            b=multi(r,c),
            c=allone(r,c),
            d=allzero(r,c),
            e=onlydiag(r,c),
            f=random(r,c)
         )
  ch=readline(prompt="Enter 'Y if you want to continue: ")
  if(ch!='Y'&&ch!='y')
    break;
  }
}

single=function(r,c)
{
  print(array(1:r,c(r)))
}

multi=function(r,c)
{
  d=r*c
  print(array(1:d, c (r,c)))
}

allone= function (r, c)
{
  c= array (1, c (r, c))
  print (c)
}

allzero= function (r, c)
{
  c= array (0, c (r, c))
  print (c)
}

onlydiag= function (r, c)
{
  l=c()
  mrc=min(c(r,c))
  print(mrc)
  for(i in 1:mrc)
  {
    l[i]=readline(prompt="Enter diagonal element : ")
  }
  c= diag(l, r, c)
  print (c)
}

random= function(r,c)
{
  k=r*c
  c=array(runif(n=k,min=0,max=100),c(r,c))
  print(c)
}