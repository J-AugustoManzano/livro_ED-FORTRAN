      PROGRAM C05EX11
      PARAMETER (PI = 3.1415926)
      WRITE(*, 10) TAN(4.0)           !  1.15782
  10  FORMAT(F8.5)
      WRITE(*, 20) TAN(PI/4.0)        !  1.00000
  20  FORMAT(F8.5)
      WRITE(*, 30) TAN(45.0*PI/180.0) !  1.00000
  30  FORMAT(F8.5)
      WRITE(*, 40) TAN(PI/7.0)        !  0.48157
  40  FORMAT(F8.5)
      END

