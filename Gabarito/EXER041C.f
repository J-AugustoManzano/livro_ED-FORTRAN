      PROGRAM EXER041C
      INTEGER I
      I = 0
 100  IF (I .LE. 20) THEN
        IF (MOD(I,2) .NE. 0) THEN
          WRITE(*, 10) I
  10      FORMAT(I5)
        ENDIF
        I = I + 1
        GOTO 100
      ENDIF
      END

