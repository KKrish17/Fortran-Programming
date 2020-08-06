!Question: Given a circle x^2+y^2 = 3.Write a fortran program to determine whether a point (x,y) lies inside, on or outside the circle.
program circle
implicit NONE
real,external::f
real::x,y,val
write(*,*)'Enter x and y coordinate: '
read(*,*) x,y 
val=f(x,y) 
if (val>0) then
print*,'Lies Outside Circle'
ELSEIF (val<0) then
print*,'Lies Inside Circle'
ELSE
print*,'Lies on the Circle'
end if 
end program circle

real function f(a,b)
f=(a**2+b**2)-20
end
