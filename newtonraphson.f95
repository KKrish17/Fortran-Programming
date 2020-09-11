program newtonraphson
 implicit none 
 real::x,iteration
 print*,'Enter the initial guess of the root of the equation: '
 read*,x 
 call newrap(x,iteration)
 print*,'The root of the equation is: ',x
end 

real function f(x)
 real::x 
 f=3*x**2-1 
end 

real function fd(x)
 real::x 
 fd=6*x 
end 

subroutine newrap(x,iteration)
 implicit none 
 real,external::f,fd  
 real::error,tol,iteration,x  
 tol=0.0000001 
 iteration=0 
 10 error=-f(x)/fd(x)
 x=x+error 
 iteration=iteration+1 
 if(abs(error) .gt. tol) then 
 goto 10 
 end if
 print*,'Tolerance is: ',tol 
 print*,'Iteration is: ',iteration
end
