q9=function()
{
  d=cars
  repeat{
  print("Choose from :- ")
  print ("a- Histogram with color")
  print ("b- Plot ")
  print ("c- Barplot ")
  ch= readline (prompt= "Enter option :- ")
  switch(ch, a=hist(d$speed,col="orange"),
             b= plot(d$speed),
             c=barplot(d$speed)
         )
  opt=readline(prompt = "Enter 'Y' if you want to continue: ")
  if(opt!='Y'&&opt!='y')
    break
  }
}