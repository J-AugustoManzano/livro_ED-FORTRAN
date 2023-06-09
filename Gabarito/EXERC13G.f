      PROGRAM EXERC13G
      INTEGER I
      REAL A(10), B(10)
      OPEN(1, FILE="DADOS2.DBC", STATUS="NEW", FORM="FORMATTED",
     $        ERR=20, ACCESS="SEQUENTIAL")
      GOTO 30
  20  OPEN(1, FILE="DADOS2.DBC", STATUS="OLD", FORM="FORMATTED",
     $        ACCESS="SEQUENTIAL")
  30  DO 100, I = 1, 10
        WRITE(*, "('Entre o ', I2, 'o. elemento.')") I
        READ(*, "(F6.2)") A(I)
 100  CONTINUE
      DO 200, I = 1, 10
        B(I) = A(I) * 2
        WRITE(1, "(F6.2)") B(I)
 200  CONTINUE
      ENDFILE 1
      CLOSE(1)
      END

