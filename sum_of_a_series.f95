!Question: Write a fortran 90 program to compute the sum of 1+1/3^2+1/5^2+1/7^2+….+1/25^2 illustrating the use of a DO-LOOP
program ComputeSum
real::a,summ
n=25
do 10 i=1,n,2 
a=1/(i**2)
summ=summ+a
10 continue
print*,'Sum of the Series',summ
stop
end program ComputeSum
