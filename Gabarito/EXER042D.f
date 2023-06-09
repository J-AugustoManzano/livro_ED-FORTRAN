      PROGRAM EXER042D
      INTEGER I
      I = 1
 100  CONTINUE
        IF (MOD(I,4) .EQ. 0) THEN
          WRITE(*, 10) I
  10      FORMAT(I5)
        ENDIF
        I = I + 1
      IF (.NOT. I .GE. 30) THEN
        GOTO 100
      ENDIF
      END

