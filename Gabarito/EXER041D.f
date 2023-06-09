      PROGRAM EXER041D
      INTEGER I
      I = 1
 100  IF (I .LT. 30) THEN
        IF (MOD(I,4) .EQ. 0) THEN
          WRITE(*, 10) I
  10      FORMAT(I5)
        ENDIF
        I = I + 1
        GOTO 100
      ENDIF
      END

