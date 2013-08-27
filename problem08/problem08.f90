program problem08

  ! https://projecteuler.net/problem=8
  ! Find the greatest product of five consecutive
  ! digits in the 1000-digit number.

  implicit none
  integer, parameter      :: n = 1000, c = 5
  integer, dimension(n)   :: x
  integer                 :: i, j, sum, max

  open(1,file='input')
  read(1,'(50I1)') x

  max = 0

  do i = 1, n - c + 1
     sum = 1
     do j = 0, c - 1
        sum = sum * x(i + j)
        if (sum .gt. max) max = sum
     end do
  end do

  print *, max

  close(1)

end program
