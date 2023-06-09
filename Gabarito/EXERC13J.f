      PROGRAM EXERC13J
      INTEGER I
      REAL A(8), B(8)
      OPEN(1, FILE="DADOS3A.DBC", STATUS="NEW", FORM="FORMATTED",
     $        ERR=100, ACCESS="SEQUENTIAL")
      GOTO 110
 100  OPEN(1, FILE="DADOS3A.DBC", STATUS="OLD", FORM="FORMATTED",
     $        ACCESS="SEQUENTIAL")
 110  WRITE(*,"('\nEntre os dados da tabela <A>.')")
      DO 120, I = 1, 10
        WRITE(*, "('Entre o ', I2, 'o. elemento.')") I
        READ(*, "(F6.2)") A(I)
        WRITE(1, "(F6.2)") A(I)
 120  CONTINUE
      OPEN(2, FILE="DADOS3B.DBC", STATUS="NEW", FORM="FORMATTED",
     $        ERR=200, ACCESS="SEQUENTIAL")
      GOTO 210
 200  OPEN(2, FILE="DADOS3B.DBC", STATUS="OLD", FORM="FORMATTED",
     $        ACCESS="SEQUENTIAL")
 210  WRITE(*,"('\nEntre os dados da tabela <B>.')")
      DO 220, I = 1, 10
        WRITE(*, "('Entre o ', I2, 'o. elemento.')") I
        READ(*, "(F6.2)") B(I)
        WRITE(2, "(F6.2)") B(I)
 220  CONTINUE
      ENDFILE 1
      CLOSE(1)
      ENDFILE 2
      CLOSE(2)
      END

