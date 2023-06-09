      PROGRAM C05EX06
      PARAMETER (PI = 3.1415926)
      WRITE(*, 10) ASIN(-1.0)       ! -1.57080
  10  FORMAT(F8.5)
      WRITE(*, 20) ASIN(1.0)        !  1.57080
  20  FORMAT(F8.5)
      WRITE(*, 30) ASIN(0.5)        !  0.52360
  30  FORMAT(F8.5)
      WRITE(*, 40) ASIN(0.5)*180/PI ! 30.00000
  40  FORMAT(F8.5)
      END

