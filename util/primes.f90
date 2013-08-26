function primes(n)

  implicit none
  integer, intent(in)    :: n
  logical, dimension (n) :: primes
  integer                :: i

  primes = .true.
  primes (1) = .false.
  primes (4 : n : 2) = .false.

  do i = 3, int(sqrt(real(n))), 2
     if (primes (i)) primes (i * i : n : 2 * i) = .false.
  end do

  return

end function
