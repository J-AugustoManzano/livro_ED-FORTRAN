      PROGRAM EXER043F
      INTEGER B, E, P, I
      WRITE(*, 10)
  10  FORMAT("Entre os valores da BASE e do EXPOENTE")
      READ(*, 20) B
      READ(*, 20) E
  20  FORMAT(I3)
      P = 1
      DO 100, I = 1, E
        P = P * B
 100  CONTINUE
      WRITE(*, 30) P
  30  FORMAT(I5)
      END

