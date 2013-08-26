program problem12

  ! https://projecteuler.net/problem=12
  ! What is the value of the first triangle
  ! number to have over five hundred divisors?

  implicit none

  interface
     subroutine prime_factors(n, pf)
       integer, intent(in)                :: n
       integer, dimension(:), intent(out) :: pf
     end subroutine
  end interface

  integer, parameter        :: n = 500, m = 100
  integer, dimension(n + m) :: p_f, c_f
  integer                   :: i, j, lpf, f, tri, counter

  ! n is the number of factors to find
  !
  ! m is a fudge factor to make sure the
  ! array p_f is large enough to store
  ! all the factors in (should implement
  ! this better)
  !
  ! p_f stores the prime factors
  ! c_f stores the counts for the duplicate

  ! lpf is the largest prime factor
  ! tri is the triangle number
  ! f is the total number of factors

  tri = 0
  j = 1

  do while (f < n)

     ! reset the counts
     c_f = 0
     counter = 1

     ! next triangular number
     tri = tri + j

     ! get the prime factors for tri
     call prime_factors(tri, p_f)

     ! the last element in p_f stores the
     ! total number of prime factors
     do i = 1, p_f(n + m)

        ! count duplicate prime factors
        c_f(counter) = c_f(counter) + 1
        if (p_f(i) .ne. p_f(i+1)) counter = counter + 1

     end do

     ! initialise the number of factors
     f = 1

     if (i .gt. 1) then

        ! get the index of the largest
        ! prime factor count in c_f
        lpf = i - 1

        ! work out the total number of factors
        ! from the prime factor count
        do i = 1, lpf
           if (c_f(i) .gt. 0) then
              f = f * (c_f(i)+1)
           end if
        end do

     end if

     j = j + 1

  end do

  print *, tri

end program
