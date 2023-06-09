      PROGRAM C07EX02
      INTEGER I, A, B
      DIMENSION A(10), B(10)

* // Entrada de dados

      WRITE(*, "('Entre dez valores para a matriz <A>\n')")
      DO 100, I = 1, 10, 1
        READ(*, "(I2)") A(I)
 100  CONTINUE

* // Processa par ou impar

      DO 200, I = 1, 10, 1
        IF (MOD(I,2) .EQ. 0) THEN
          B(I) = A(I) * 5
        ELSE
          B(I) = A(I) + 5
        ENDIF
 200  CONTINUE

* // Apresentacao das matrizes

      WRITE(*, "('\n')")
      DO 300, I = 1, 10, 1
        WRITE(*, "('A[', I2, '] = ', I2)") I, A(I)
 300  CONTINUE

      WRITE(*, "('\n')")
      DO 400, I = 1, 10, 1
        WRITE(*, "('B[', I2, '] = ', I2)") I, B(I)
 400  CONTINUE

      END
