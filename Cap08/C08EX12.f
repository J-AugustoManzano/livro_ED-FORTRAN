      PROGRAM C08EX12
      INTEGER I, J
      CHARACTER X*40, NOME(10)*40

      WRITE(*, "('Ordenacao de nomes\n')")

* // Entrada dos nomes

      WRITE(*, "('Entre 10 nomes.\n')")
      DO 100, I = 1, 10, 1
        READ(*, "(A40)") NOME(I)
 100  CONTINUE

* // Ordenacao

      DO 200, I = 1, 9, 1
        DO 300, J = I + 1, 10, 1
          IF (NOME(I) .GT. NOME(J)) THEN
            X = NOME(I)
            NOME(I) = NOME(J)
            NOME(J) = X
          ENDIF
 300    CONTINUE
 200  CONTINUE

* // Apresentacao dos nomes

      WRITE(*, "('\nOs nomes ordenados sao:\n')")
      DO 400, I = 1, 10, 1
        WRITE(*, "('NOME[', I2, '] = ', A40)") I, NOME(I)
 400  CONTINUE
      END

