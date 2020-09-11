program simpson_rule  
 implicit none 
 real,external::f 
 real::x,a,b,h,simpson,fodd,feven 
 integer::n,i,m 
 print*,'Enter the lower limit, upper limit and sub-intervals of the integration: '
 read*,a,b,n 
 h=(b-a)/n 
 m=n/2 
 fodd=0 
 do i=0,m-1 
  fodd=fodd+f(a+(2*i+1)*h)
 end do 
 do i=2,m-2 
  feven=feven+f(a+2*i*h)
 end do 
 simpson=(h/3.0)*(f(a)+f(b)+4*fodd+2*feven)
 print*,'The integrated value using simpson Rule is: ',simpson
end 

real function f(x)
 real::x 
 f=x**2
end 
