      PROGRAM EXERC13H
      INTEGER I
      REAL C(10)
      OPEN(1, FILE="DADOS2.DBC", STATUS="OLD", FORM="FORMATTED",
     $        ACCESS="SEQUENTIAL")
      DO 100, I = 1, 10
        READ(1, "(F6.2)") C(I)
        WRITE(*, "('O elemento C[', I2, '] = ', F6.2)") I, C(I)
 100  CONTINUE
      ENDFILE 1
      CLOSE(1)
      END

