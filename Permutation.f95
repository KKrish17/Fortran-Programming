PROGRAM permutation
    INTEGER::n,r,val
    print*,'Enter the value of n and r to find nCr using Subprogram:'
    read(*,*)n,r
    if(n.lt.r) then 
     write(*,*)'n value will be grater than r'
    else 
     val=fact(n)/(fact(n-r)*fact(r))
     print*,'The value of nCr: ',val
    end if 
end

real function fact(n)
  integer:: n,i
  if (n < 0) error stop 'Factorial of Negative number is not defined'
  fact = 1.0
  do i = 2, n
    fact = fact * i
  enddo
end
