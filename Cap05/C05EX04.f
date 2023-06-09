      PROGRAM C05EX04
      WRITE(*, 10) SQRT(9.0)        !  3.00000
  10  FORMAT(F8.5)
      WRITE(*, 20) SQRT(SQRT(16.0)) !  2.00000
  20  FORMAT(F8.5)
      WRITE(*, 30) SQRT(2.0)        !  1.41421
  30  FORMAT(F8.5)
      END

