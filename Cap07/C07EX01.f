      PROGRAM C07EX01
      INTEGER I
      REAL MD, SOMA, MEDIA
      DIMENSION MD(8)
      SOMA = 0
      MEDIA = 0
      WRITE(*, "('Calculo de media escolar\n\n')")
      DO 100, I = 1, 8, 1
        WRITE(*, "('Entre a seguir a ', I2, 'a. nota: ')") I
        READ(*, "(F4.1)") MD(I)
        SOMA = SOMA + MD(I)
 100  CONTINUE
      MEDIA = SOMA / 8.0
      WRITE(*, "('A media do grupo equivale a ', F4.1)") MEDIA
      END
