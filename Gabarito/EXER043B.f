      PROGRAM EXER043B
      INTEGER I, S
      S = 0
      DO 100, I = 1, 100
        S = S + I
 100  CONTINUE
      WRITE(*, 10) S
  10  FORMAT(I5)
      END

