      PROGRAM EXER043C
      INTEGER I
      DO 100, I = 0, 20
        IF (MOD(I,2) .NE. 0) THEN
          WRITE(*, 10) I
  10      FORMAT(I5)
        ENDIF
 100  CONTINUE
      END

