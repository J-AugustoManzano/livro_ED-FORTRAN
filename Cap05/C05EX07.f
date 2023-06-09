      PROGRAM C05EX07
      PARAMETER (PI = 3.1415926)
      WRITE(*, 10) ATAN(1.0)        !  0.78540
  10  FORMAT(F8.5)
      WRITE(*, 20) ATAN(0.5)        !  0.46365
  20  FORMAT(F8.5)
      WRITE(*, 30) ATAN(1.0)*180/PI ! 45.00000
  30  FORMAT(F8.5)
      WRITE(*, 40) ATAN(2.0)        !  1.10715
  40  FORMAT(F8.5)
      END

