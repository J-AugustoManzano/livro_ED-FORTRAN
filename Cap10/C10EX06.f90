! Versao FORTRAN 90

PROGRAM C10EX06
  INTEGER(2) N, I, R
  WRITE(*, *) "Entre o valor da tabuada."
  READ(*, *) N
  DO I = 1, 10
    R = N * I
    WRITE(*, 10) N, I, R
    10 FORMAT(1X, I2, " X ", I2, " = ", I3)
  ENDDO
END PROGRAM C10EX06

