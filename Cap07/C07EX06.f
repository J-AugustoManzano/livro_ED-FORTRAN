      PROGRAM C07EX06
      INTEGER I, J
      REAL NOTA(0:9,0:3)
      WRITE(*, "('Leitura e apresentacao de notas\n')")
      DO 110, I = 0, 9, 1
        WRITE(*, "('\nInforme as notas do ', I2 , 'o aluno.')") I+1
        DO 120, J = 0, 3, 1
          READ(*, "(F4.1)") NOTA(I,J)
 120    CONTINUE
 110  CONTINUE
      DO 210, I = 0, 9, 1
        WRITE(*, "('\nAluno ', I2)") I+1
        DO 220, J = 0, 3, 1
          WRITE(*, "('Nota: ', F4.1)") NOTA(I,J)
 220    CONTINUE
 210  CONTINUE
      END

