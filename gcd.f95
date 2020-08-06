!Question: Write a fortran 90 program to find the GCD of three positive integers
program GCD_Program
    implicit none
    Integer :: n , a(100) , i , c , gcd
    !Write ( * , 2 ) 'How  many  numbers  input  for  GCD ?'
    !2 Format ( A40 )
    !Read ( * , *)  n 
    !You can change the n value to find more numbers GCD
    n=3
    Write( * , 3 ) 'Input numbers :'
    3 Format ( / , A20 )
    Read ( *, * ) ( a(i) , i = 1 , n )
    Do i = 1 , ( n - 1 )
     7   c = mod (a(i) , a(i+1))
        If  ( c == 0 ) then
            gcd = a( i + 1)
            Else
                a(i) = a ( i +1 )
                a( i+1 ) = c
                Goto 7
                End if
                End do
                Write ( * , 12 ) 'GCD = ' , gcd
                12 Format ( / , A7 , I7 )
End program GCD_Program
