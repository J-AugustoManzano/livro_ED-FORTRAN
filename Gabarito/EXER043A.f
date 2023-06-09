      PROGRAM EXER043A
      INTEGER I, Q
      DO 100, I = 15, 200
        Q = I ** 2
        WRITE(*, 10) Q
  10    FORMAT(I5)
 100  CONTINUE
      END


