      PROGRAM EXERC13A
      INTEGER I, A(10)
      OPEN(1, FILE="DADOS1.DBC", STATUS="NEW", FORM="FORMATTED",
     $        ERR=20, ACCESS="SEQUENTIAL")
      GOTO 30
  20  OPEN(1, FILE="DADOS1.DBC", STATUS="OLD", FORM="FORMATTED",
     $        ACCESS="SEQUENTIAL")
  30  DO 100, I = 1, 10
        WRITE(*, "('Entre o ', I2, 'o. elemento.')") I
        READ(*, "(I4)") A(I)
        WRITE(1, "(I4)") A(I)
 100  CONTINUE
      ENDFILE 1
      CLOSE(1)
      END

