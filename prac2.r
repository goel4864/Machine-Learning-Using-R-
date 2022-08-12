logic_op=function(){
  num1=as.integer(readline(prompt="Enter first number: "))
  num2=as.integer(readline(prompt="Enter second number: "))
  
  repeat{
  print("Choose an operation to perform")
  print("1. OR OPERATION")
  print("2. AND OPERATION")
  print("3. EQUALITY")
  print("4. XOR OPEARTION")
  print("5. NOT OPERATION")
  choice=readline(prompt="Enter the number you want to choose(1-5) : ")
  switch(choice, '1'=OR(num1,num2),
                 '2'=AND(num1,num2),
                 '3'=EQUAL(num1,num2),
                 '4'=XOR(num1,num2),
                 '5'=NOT(num1,num2)
        )
  c=readline(prompt="Enter 'Y' if you want to continue: ")
  if(c!='Y' && c!='y'){
    break
  }
  }
}

OR=function(num1,num2){
  print(num1||num2)
}

AND=function(num1,num2){
  print(num1&&num2)
}

EQUAL=function(num1,num2){
  print(num1==num2)
}

NOT=function(num1,num2){
  print("NOT of first number: ")
  print(!num1)
  print("NOT of second number: ")
  print(!num2)
}

XOR=function(num1,num2)
{
  print(xor(num1,num2))
}