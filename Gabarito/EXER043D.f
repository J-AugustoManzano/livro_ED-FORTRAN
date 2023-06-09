      PROGRAM EXER043D
      INTEGER I
      DO 100, I = 1, 29
        IF (MOD(I,4) .EQ. 0) THEN
          WRITE(*, 10) I
  10      FORMAT(I5)
        ENDIF
 100  CONTINUE
      END


