      PROGRAM EXERC13K
      INTEGER I
      REAL C(16)
      OPEN(1, FILE="DADOS3A.DBC", STATUS="OLD", FORM="FORMATTED",
     $        ACCESS="SEQUENTIAL")
      OPEN(2, FILE="DADOS3B.DBC", STATUS="OLD", FORM="FORMATTED",
     $        ACCESS="SEQUENTIAL")
      DO 100, I = 1, 16
        IF (I .LT. 8) THEN
          READ(1, "(F6.2)") C(I)
        ELSE
          READ(2, "(F6.2)") C(I)
        ENDIF
 100  CONTINUE
      DO 200, I = 1, 16
        WRITE(*, "('O elemento C[', I2, '] = ', F6.2)") I, C(I)
 200  CONTINUE
      ENDFILE 1
      CLOSE(1)
      ENDFILE 2
      CLOSE(2)
      END

