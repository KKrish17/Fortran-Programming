!Question: Write a Fortran 90 program to convey the following : 
!           f(x) = x^2+sin2x if x < 3
!                = 30 if x = 3
!                = x^3+cos3x if x > 3
program func
implicit NONE
real,external::f
real::a,val
print*,'Enter the Value of x: '
read(*,*)a
val=f(a)
print*,"The value of f(x): ",val
end program func

real function f(x)
if (x>3) then 
 f=(x**2+sin(2*x))
elseif (x<3) then 
 f=(x**3+cos(3*x))
else
 f=30
end if
end
