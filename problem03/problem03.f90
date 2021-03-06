program problem3

  ! https://projecteuler.net/problem=3
  ! What is the largest prime factor of the number 600851475143

  implicit none

  interface
     function primes(n)
       integer, intent(in)   :: n
       logical, dimension(n) :: primes
     end function
  end interface

  integer, parameter    :: x = 600851475143
  integer, parameter    :: n = int(sqrt(real(x)))
  logical, dimension(n) :: is_prime
  integer               :: i

  is_prime = primes(n)

  do i = n, 2, -1
     if (is_prime(i) .and. mod(x,i) == 0) then
        print *, i
        exit
     end if
  end do

end program
