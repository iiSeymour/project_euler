program problem14

  ! https://projecteuler.net/problem=14

  ! The following iterative sequence is defined for the set of positive integers:
  !
  ! x -> x/2    (x is even)
  ! x -> 3x + 1 (x is odd)
  !
  ! Which starting number, under one million, produces the longest chain?

  implicit none
  integer, parameter :: n = 999999
  integer :: x, x_f, i, count, max_count

  ! Brute forced but fast enough

  max_count = 2

  do i = 3, n, 2

     x = i
     count = 2

     do while (x .ne. 2)
        if (mod(x, 2) == 0) then
           x = x / 2
        else
           x = 3 * x + 1
        end if
        count = count+1
     end do

     if (count > max_count) then
        max_count = count
        x_f = i
     end if

  end do

  print *, x_f

end program
