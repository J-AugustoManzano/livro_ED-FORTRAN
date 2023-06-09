      PROGRAM C09EX05
      INTEGER I
      REAL A(10)
      OPEN(1, FILE="MATFLO.DBC", STATUS="NEW", FORM="FORMATTED",
     $        ERR=20, ACCESS="SEQUENTIAL")
      GOTO 30
  20  OPEN(1, FILE="MATFLO.DBC", STATUS="OLD", FORM="FORMATTED",
     $        ERR=20, ACCESS="SEQUENTIAL")
  30  DO 100, I = 1, 10
         WRITE(*, "('Entre o ', I2, 'o. elemento.')") I
         READ(*, "(F6.2)") A(I)
         WRITE(1, "(F6.2)") A(I)
 100  CONTINUE
      ENDFILE 1
      CLOSE(1)
      END

