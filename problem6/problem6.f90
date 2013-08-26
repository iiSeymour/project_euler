program problem6

  ! https://projecteuler.net/problem=6
  ! Find the difference between the sum of the
  ! squares of the first one hundred natural
  ! numbers and the square of the sum

  implicit none
  integer :: n, i, sum, squares

  n = 100
  squares = 1

  do i = 2, n
     squares = squares + i * i
  end do

  sum = n * (n / 2) + (n / 2)

  print *, sum * sum - squares

end program
