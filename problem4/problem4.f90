program problem4

  ! https://projecteuler.net/problem=4
  ! Find the largest palindrome made from the
  ! product of two 3-digit numbers

  implicit none
  integer :: i, j

  ! not very clever just brute force and luck!
  do i = 999, 900, -1
     do j = 999, 900, -1
        if (is_palindrome(i*j)) then
           print *, i*j
           exit
        end if
     end do
  end do

contains

  function is_palindrome(n)
    implicit none
    logical              :: is_palindrome
    integer, intent(in)  :: n
    integer              :: rev, num, dig

    is_palindrome = .false.
    num = n
    rev = 0
    do while (num > 0)
       dig = mod(num, 10)
       rev = rev * 10 + dig
       num = num / 10
    end do

    if (rev == n) is_palindrome = .true.

    return

 end function

end program
