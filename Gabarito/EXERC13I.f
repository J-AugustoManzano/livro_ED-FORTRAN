      PROGRAM EXERC13I
      INTEGER I
      REAL X(10), S
      OPEN(1, FILE="DADOS2.DBC", STATUS="OLD", FORM="FORMATTED",
     $        ACCESS="SEQUENTIAL")
      DO 100, I = 1, 10
        READ(1, "(F6.2)") X(I)
        WRITE(*, "('O elemento C[', I2, '] = ', F6.2)") I, X(I)
 100  CONTINUE
      S = 0
      DO 200, I = 1, 10
        IF (MOD(INT(X(I)),4) .EQ. 0) THEN
          S = S + X(I)
        ENDIF
 200  CONTINUE
      WRITE(*, "('\nSomatorio = ', F6.2)") S
      ENDFILE 1
      CLOSE(1)
      END

