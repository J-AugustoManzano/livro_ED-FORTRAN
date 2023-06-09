      PROGRAM C05EX05
      PARAMETER (PI = 3.1415926)
      WRITE(*, 10) ACOS(-1.0)       !  3.14159
  10  FORMAT(F8.5)
      WRITE(*, 20) ACOS(1.0)        !  0.00000
  20  FORMAT(F8.5)
      WRITE(*, 30) ACOS(0.5)        !  1.04720
  30  FORMAT(F8.5)
      WRITE(*, 40) ACOS(0.5)*180/PI ! 60.00000
  40  FORMAT(F8.5)
      END

