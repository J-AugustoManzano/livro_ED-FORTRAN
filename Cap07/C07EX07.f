      PROGRAM C07EX07
      INTEGER X, I, J, A(5)

      WRITE(*, "('Ordenacao de valores\n')")

* // Entrada de dados

      WRITE(*, "('Entre 5 valores para a matriz <A>\n')")
      DO 100, I = 1, 5, 1
        READ(*, "(I2)") A(I)
 100  CONTINUE

* // Ordenacao

      DO 200, I = 1, 4, 1
        DO 300, J = I + 1, 5, 1
          IF (A(I) .GT. A(J)) THEN
            X = A(I)
            A(I) = A(J)
            A(J) = X
          ENDIF
 300    CONTINUE
 200  CONTINUE

* // Apresentacao dos dados

      WRITE(*, "('\nOs valores ordenados sao\n')")
      DO 400, I = 1, 5, 1
        WRITE(*, "('A[', I1, '] = ', I2)") I, A(I)
 400  CONTINUE
      END

