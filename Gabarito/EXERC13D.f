      PROGRAM EXERC13D
      INTEGER I, A(10)
      OPEN(1, FILE="DADOS1.DBC", STATUS="OLD", FORM="FORMATTED",
     $        ACCESS="SEQUENTIAL")
      DO 100, I = 1, 10
        READ(1, "(I4)") A(I)
 100  CONTINUE
      ENDFILE 1
      CLOSE(1)
      DO 200, I = 1, 10
        IF (MOD(A(I),2) .NE. 0) THEN
          WRITE(*, "('O elemento A[', I2, '] = ', I4)") I, A(I)
        ENDIF
 200  CONTINUE
      END

