elop=function()
  {
  v1=c()
  v2=c()
  n=readline(prompt="Enter number of elements of first array: ")
  for(i in 1:n)
  {
    v1[i]=as.integer(readline(prompt="Enter element: "))  
  }
  m=readline(prompt="Enter number of elements of second array: ")
  for(j in 1:m)
  {
    v2[j]=as.integer(readline(prompt="Enter element: "))
  }
  repeat{
    print("Choose an Operation to perform: ")
    print("A-ADDITION")
    print("S-SUBTRACTION")
    print("M-MULTIPLICATION")
    print("D-DIVISION")
    print("E-EXPONENTIAL")
    ch=readline(prompt="Enter your choice: ")
    switch(ch,A=add(v1,v2),
              S=sub(v1,v2),
              M=mul(v1,v2),
              D=div(v1,v2),
              E=expo(v1,v2)
           )
    c=readline(prompt="Enter 'Y' if you want to continue: "); 
    if(c!='Y' && c!='y'){
      break;
    }
  }
}




add=function(a,b){
  if(length(a)!=length(b)){
    print("number of elements in both array must be same")
  }else{
  print(a+b)
  }
}

sub=function(a,b){
  if(length(a)!=length(b)){
    print("number of elements in both array must be same")
  }else{
    print(a-b)
  }
}
mul=function(a,b){
  if(length(a)!=length(b)){
    print("number of elements in both array must be same")
  }else{
    print(a*b)
  }
}
div=function(a,b){
  if(length(a)!=length(b)){
    print("number of elements in both array must be same")
  }else{
    print(a/b)
  }
}
expo=function(a,b){
  if(length(a)!=length(b)){
    print("number of elements in both array must be same")
  }else{
    print(a^b)
  }
}
