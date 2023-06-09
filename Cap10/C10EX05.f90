! Versao FORTRAN 90

PROGRAM C10EX05
  INTEGER(2) N, I, R
  WRITE(*, *) "Entre o valor da tabuada."
  READ(*, *) N
  I = 1
  DO WHILE (I <= 10)
    R = N * I
    WRITE(*, 10) N, I, R
    10 FORMAT(1X, I2, " X ", I2, " = ", I3)
    I = I + 1
  END DO
END PROGRAM C10EX05
