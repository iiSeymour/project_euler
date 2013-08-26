subroutine prime_factors(n, pf)

  implicit none
  integer, intent(in)                 :: n
  integer, dimension(:), intent(out)  :: pf
  integer                             :: div, next, rest, i

  i = 1
  div = 2
  next = 3
  rest = n

  do while ( rest .ne. 1 )
     do while (mod(rest, div) .eq. 0 )
        pf(i) = div
        i = i + 1
        rest = rest / div
     end do
     div = next
     next = next + 2
  end do

  ! store the number of prime factors
  ! as the last element in the array
  pf(size(pf)) = i - 1

end subroutine
