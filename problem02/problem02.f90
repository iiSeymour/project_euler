program problem02

  ! https://projecteuler.net/problem=2
  ! By considering the terms in the Fibonacci sequence
  ! whose values do not exceed four million, find the sum
  ! of the even-valued terms.

  implicit none
  integer :: i, tmp, f1, f2, n, sum

  n = 4000000
  f1 = 1
  f2 = 2
  sum = f2

  do
     ! every 3n - 1 Fibonacci number
     ! is even when starting at 1, 2
     do i = 1, 3
        tmp = f2
        f2 = f1 + f2
        f1 = tmp
     end do

     if (f2 < n) then
        sum = sum + f2
     else
        exit
     end if
  end do

  print *, sum

end program
