      PROGRAM C05EX12
      PARAMETER (PI = 3.1415926)
      WRITE(*, 10) COSH(60.0*PI/180.0) !  1.60029
  10  FORMAT(F8.5)
      WRITE(*, 20) COSH(45.0*PI/180.0) !  1.32461
  20  FORMAT(F8.5)
      WRITE(*, 30) COSH(-1.0)          !  1.54308
  30  FORMAT(F8.5)
      WRITE(*, 40) COSH(4.0)           ! 27.30823
  40  FORMAT(F8.5)
      END

