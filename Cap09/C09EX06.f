      PROGRAM C09EX06
      INTEGER I
      REAL A(10)
      OPEN(1, FILE="MATFLO.DBC", STATUS="OLD", FORM="FORMATTED",
     $        ACCESS="SEQUENTIAL")
      DO 100, I = 1, 10
         READ(1, "(F6.2)") A(I)
         WRITE(*, "('O elemento A[', I2, '] = ', F6.2)") I, A(I)
 100  CONTINUE
      ENDFILE 1
      CLOSE(1)
      END

