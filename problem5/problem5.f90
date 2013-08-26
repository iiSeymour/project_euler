program problem5

  ! https://projecteuler.net/problem=5
  ! What is the smallest positive number
  ! that is evenly divisible by all of
  ! the numbers from 1 to 20?

  implicit none
  integer :: n, i, j

  n = 20

!    n is smallest possible solution i.e n = 1 or n = 2
!    so start from n. The solution must be a multiple
!    of n so use n as the step size.

out: do i = n, huge(n), n

!        check from n - 1 down to 3, we know the solution
!        is a multiple of n already from the step size as
!        for n = 20 all i will be even

in:      do j = n - 1, 3, -1
             if (mod(i, j) .ne. 0) cycle out
         end do in

!        if we made it here we found the solution
         print *, i
         stop

      end do out

      print *, "Solution is greater than", huge(n)

end program
