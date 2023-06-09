      PROGRAM EXER042C
      INTEGER I
      I = 0
 100  CONTINUE
        IF (MOD(I,2) .NE. 0) THEN
          WRITE(*, 10) I
  10      FORMAT(I5)
        ENDIF
        I = I + 1
      IF (.NOT. I .GT. 20) THEN
        GOTO 100
      ENDIF
      END

