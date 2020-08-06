!Question: Using IF-THEN-ELSE statement write a program to calculate n!
program fact 
integer::n,val
print*,'Enter the Number to find itss Factorial'
read(*,*) n
val=1
if (n<0) then 
print*,'Error! Enter a Correct Number'
else 
 do i=1,n 
  val=val*i
 end do 
print*,'The Factorial of ',n,': ',val
end if 
end program fact
