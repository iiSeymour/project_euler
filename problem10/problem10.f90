program problem10

  ! https://projecteuler.net/problem=10
  ! Find the sum of all the primes below two million.

  implicit none
  interface
     function primes(n)
       integer, intent(in)   :: n
       logical, dimension(n) :: primes
     end function
  end interface

  integer, parameter    :: n = 2000000
  logical, dimension(n) :: is_prime
  integer               :: i, sum

  is_prime = primes(n)
  sum = 0

  do i = 2, n
     if (is_prime(i)) sum = sum + i
  end do

  print *, sum

end program
