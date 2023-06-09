      PROGRAM C05EX10
      PARAMETER (PI = 3.1415926)
      WRITE(*, 10) SIN(30.0*PI/180.0) !  0.50000
  10  FORMAT(F8.5)
      WRITE(*, 20) SIN(PI/6.0)        !  0.50000
  20  FORMAT(F8.5)
      WRITE(*, 30) SIN(1.0)           !  0.84147
  30  FORMAT(F8.5)
      WRITE(*, 40) SIN(PI/3.0)        !  0.86603
  40  FORMAT(F8.5)
      END

