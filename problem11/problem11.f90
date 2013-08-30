program problem11

  ! https://projecteuler.net/problem=11
  ! What is the greatest product of four adjacent
  ! numbers in the same direction
  ! (up, down, left, right, or diagonally) in the 20×20 grid?

  implicit none
  integer, parameter                   :: n = 20, pad = 3
  integer, dimension(n+pad*2, n+pad*2) :: x
  integer                              :: i, j, sum, max, x0, xN

  x = 0
  max = 0

  x0 = pad + 1
  xN = n + pad

  open(1,file='input')

  do i = x0, xN
     read(1,'(19(I2,1X),I2)') x(i,x0:xN)
  end do

  close(1)

  do i = x0, xN
     do j = x0, xN

        ! East
        sum = x(i,j) * x(i+1,j) * x(i+2,j) * x(i+3,j)
        if (sum > max) max = sum

        ! South
        sum = x(i,j) * x(i,j-1) * x(i,j-2) * x(i,j-3)
        if (sum > max) max = sum

        ! South East
        sum = x(i,j) * x(i-1,j+1) * x(i-2,j+2) * x(i-3,j+3)
        if (sum > max) max = sum

        ! South West
        sum = x(i,j) * x(i-1,j-1) * x(i-2,j-2) * x(i-3,j-3)
        if (sum > max) max = sum

     end do
  end do

  print *, max

end program
