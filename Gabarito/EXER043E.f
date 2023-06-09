      PROGRAM EXER043E
      INTEGER I, S
      S = 0
      DO 100, I = 1, 50
        IF (MOD(I,2) .EQ. 0) THEN
          S = S + I
        ENDIF
 100  CONTINUE
      WRITE(*, 10) S
  10  FORMAT(I5)
      END

