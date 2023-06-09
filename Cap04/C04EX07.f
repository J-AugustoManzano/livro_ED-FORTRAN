      PROGRAM C04EX07
      INTEGER N, I, R
      WRITE(*, 10)
  10  FORMAT("Entre o valor da tabuada.")
      READ(*, 20) N
  20  FORMAT(I2, "\n")
      DO 100,  I = 1, 10, 1
        R = N * I
        WRITE(*, 30) N, I, R
  30    FORMAT(I2, " X ", I2, " = ", I3)
 100  CONTINUE
      END

