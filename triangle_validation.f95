!Question: Lengths of three segments a, b, c are given. Write a Fortran-90 program to verify whether it is possible to draw a triangle with a, b, c as the sides.
program triangle
integer::a,b,c
print*,'Enter the Three sides of the triangle'
read(*,*)a,b,c
if (a + b <= c .or. a + c <= b .or. b + c <= a) then
    print*,'The Triangle is not Valid' 
else
    print*,'The Triangle is Valid'
end if
end program triangle
