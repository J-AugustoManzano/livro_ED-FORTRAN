      PROGRAM C05EX14
      PARAMETER (PI = 3.1415926)
      WRITE(*, 10) TANH(60.0*PI/180.0) !  0.78071
  10  FORMAT(F8.5)
      WRITE(*, 20) TANH(45.0*PI/180.0) !  0.65579
  20  FORMAT(F8.5)
      WRITE(*, 30) TANH(-1.0)          ! -0.76159
  30  FORMAT(F8.5)
      WRITE(*, 40) TANH(4.0)           !  0.99933
  40  FORMAT(F8.5)
      END

