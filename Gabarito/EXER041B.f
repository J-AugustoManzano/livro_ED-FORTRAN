      PROGRAM EXER041B
      INTEGER I, S
      S = 0
      I = 1
 100  IF (I .LE. 100) THEN
        S = S + I
        I = I + 1
        GOTO 100
      ENDIF
      WRITE(*, 10) S
  10  FORMAT(I5)
      END

