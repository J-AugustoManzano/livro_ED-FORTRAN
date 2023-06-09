      PROGRAM C05EX09
      PARAMETER (PI = 3.1415926)
      WRITE(*, 10) COS(60.0*PI/180.0) !  0.50000
  10  FORMAT(F8.5)
      WRITE(*, 20) COS(45.0*PI/180.0) !  0.70711
  20  FORMAT(F8.5)
      WRITE(*, 30) COS(ATAN(1.0))     !  0.70711
  30  FORMAT(F8.5)
      WRITE(*, 40) COS(PI/3.0)        !  0.50000
  40  FORMAT(F8.5)
      END

