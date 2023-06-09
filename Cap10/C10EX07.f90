! Versao FORTRAN 90

PROGRAM C10EX07
  INTEGER(2) N, I, R
  CHARACTER (LEN=*), PARAMETER :: X = "(1X, I2, ' X ', I2, ' = ', I3)"  
  WRITE(*, *) "Entre o valor da tabuada."
  READ(*, *) N
  DO I = 1, 10
    R = N * I
    WRITE(*, X) N, I, R
  ENDDO
END PROGRAM C10EX07