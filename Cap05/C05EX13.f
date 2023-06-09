      PROGRAM C05EX13
      PARAMETER (PI = 3.1415926)
      WRITE(*, 10) SINH(60.0*PI/180.0) !  1.24937
  10  FORMAT(F8.5)
      WRITE(*, 20) SINH(45.0*PI/180.0) !  0.86867
  20  FORMAT(F8.5)
      WRITE(*, 30) SINH(-1.0)          ! -1.17520
  30  FORMAT(F8.5)
      WRITE(*, 40) SINH(4.0)           ! 27.28992
  40  FORMAT(F8.5)
      END

