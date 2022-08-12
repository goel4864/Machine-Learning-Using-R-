q8=function()
{
  t=seq(0,10,0.1)
  x=sin(t)
  y=cos(t)
  repeat{
  print ("a- line graph cos")
  print ("b- line graph sin ")
  print ("c- histogram cos ")
  print ("d- histogram sin ")
  print ("e- bargraph cos ")
  print ("f- bargraph sin ")
  ch= readline (prompt= "Enter option: ")
  switch(ch, a=plot(t,y,type="o"),
             b=plot(t,x,type="o"),
             c=hist(y,xlab="y",col="yellow",border="blue",xlim=c(0,10),ylim=c(2,10)),
             d=hist(x,xlab="x",col="yellow",border="blue",xlim=c(0,10),ylim=c(2,10)),
             e=barplot(y) ,
             f=barplot(x) 
         )
  opt=readline(prompt = "Enter 'Y' if you want to continue: ")
  if(opt!='Y'&&opt!='y')
    break
 }
}