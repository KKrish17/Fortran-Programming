!Question: Write a Fortran-90 program to evaluate lower limit {1} higher limit {2} dx/(1+x)^2 Trapezoidal rule.
program trapezoidal
implicit NONE
real,external::f
real::a,b,h,p,integration,summ
integer::n,i
print*,"lower limit"
read*,a
print*,"upper limit"
read*,b 
print*,"subinterval"
read*,n 
h=(b-a)/n 
p=(h/2)*(f(a)+f(b))
summ=0 
do i=1,n-1
summ=summ+h*f(a+i*h)
end do
integration=p+summ
print*,"integrated value using trapezoidal",integration
end program trapezoidal

real function f(x)
f=sqrt(1+x**2)
end
