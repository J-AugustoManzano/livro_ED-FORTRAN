      PROGRAM EXER041E
      INTEGER I, S
      S = 0
      I = 1
 100  IF (I .LE. 50) THEN
        IF (MOD(I,2) .EQ. 0) THEN
          S = S + I
        ENDIF
        I = I + 1
        GOTO 100
      ENDIF
      WRITE(*, 10) S
  10  FORMAT(I5)
      END

