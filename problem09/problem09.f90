program problem9

  ! https://projecteuler.net/problem=9
  ! There exists exactly one Pythagorean
  ! triplet for which a + b + c = 1000.
  ! Find the product abc.

  implicit none

  integer, parameter     :: n = 1000
  integer                :: a, b, c

  ! Small problem size, fast language, brute force!
  ! Probably should do something clever with
  ! Euclids Formula...

  do a = 3, n / 3
     do b = 3, (n-1-a) / 2
        c = n - a - b
        if (c*c .eq. a*a + b*b) then
           print *, a*b*c
           exit
        end if
     end do
  end do

end program
