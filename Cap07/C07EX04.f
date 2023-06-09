      PROGRAM C07EX04
      INTEGER I, J
      REAL NOTA
      DIMENSION NOTA(10,4)

      WRITE(*, "('Leitura e apresentacao de notas\n')")

* // Entrada das notas

      DO 110, I = 1, 10, 1
        WRITE(*, "('\nInforme as notas do ', I2 , 'o aluno.')") I
        DO 120, J = 1, 4, 1
          READ(*, "(F4.1)") NOTA(I,J)
 120    CONTINUE
 110  CONTINUE

* // Saida das notas

      DO 210, I = 1, 10, 1
        WRITE(*, "('\nAluno ', I2)") I
        DO 220, J = 1, 4, 1
          WRITE(*, "('Nota: ', F4.1)") NOTA(I,J)
 220    CONTINUE
 210  CONTINUE

      END

