program problem1

  ! https://projecteuler.net/problem=1
  ! Find the sum of all the multiples of 3 or 5 below 1000.

  implicit none
  integer :: i, n, sum

  n = 999
  sum = 0

  ! sum the multiples of 3
  do i = 3, n, 3
     sum = sum + i
  end do

  ! sum the multiples of 5
  do i = 5, n, 5
     sum = sum + i
  end do

  ! remove any duplicates
  do i = 15, n, 15
     sum = sum - i
  end do

  print *, sum

end program
