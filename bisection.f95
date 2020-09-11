program bisection
 implicit none 
 real,external::f 
 real::a,b,c 
 write(*,*)'Enter the value of a and b such that f(a) and f(b) should have opposite sign'
 read(*,*)a,b 
 if(f(a)*f(b).gt.0) then 
  write(*,*)'Enter a and b value correctly'
 else 
  10 c=(a+b)/2
    if(f(c).eq.0) then 
     write(*,20)'The roots of the equation upto 4 decimal place is :',c
     20 format (A,F12.4)
    else if (f(a)*f(c).gt.0) then 
     a=c 
     goto 10 
    else 
     b=c 
     goto 10 
    end if
 end if 
end 

real function f(x)
 real::x
 f=(3*x)-1 
end 
