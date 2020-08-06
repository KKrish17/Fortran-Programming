!Question: Write a program in Fortran-90 to find S = 1+x+x^2/2!+x^3/3!+.....+x^7/7!
program series
real::summ,x,i
integer::fact
fact=1
summ=1
print*,'Enter the value of x:'
read(*,*)x
do 10 i=1,7
   fact=fact*i 
   summ=summ+real(x**i/fact)
10 continue
   print*,'The Value of the Series',summ
stop
end
