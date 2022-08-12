simple=function()
{
num1=3.14562
str1="hello"

repeat{
print("Choose from : ")
print("a-View Initialized number")
print("b-View initialized spring")
print("c-Set digit to 4 for number")
print("d-Set nsmall to 8 for number")
print("e-Set scientific to TRUE for number")
print("f-Set width to 10 for string")
print("g-Set width to 10 and justify center")
print("h-Set width to 10 and justify right")
ch=readline("Enter your choice : ")
switch(ch,a=print(num1),
          b=print(str1),
          c=print(format(num1,digit=4)),
          d=print(format(num1,nsmall=8)),
          e=print(format(num1,scientific=TRUE)),
          f=print(format(str1,width=10)),
          g=print(format(str1,width=10,justify='c')),
          h=print(format(str1,width=10,justify='r'))
       )
c=readline(prompt="Enter 'Y' if you want to continue: ")
if(c!='Y'&& c!='y')
  break
}
}