q10= function()
{
  repeat{
  print ("Print 10 numbers using: ")
  print ("a - Repeat loop")
  print ("b - While loop")
  print ("c - For loop")
  ch= readline (prompt= "Enter choice : ")
  switch (ch, a= reploop(), 
              b= whileloop(), 
              c= forloop()
          )
  opt=readline(prompt = "Enter 'Y' if you want to continue: ")
  if(opt!='Y'&&opt!='y')
    break
  }
}

reploop= function()
{
  i= 1
  repeat 
  {
    if (i<11)
    {
      print (i)
      i= i+1
    }
    else
    {
      break;
    }
  }
}

whileloop= function()
{
  i= 1
  while (i<11)
  {
    print (i)
    i= i+ 1
  }
}

forloop= function()
{
  for (i in 1:10)
  {
    print(i)
  }
}