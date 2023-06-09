      PROGRAM C04EX04
      INTEGER N, I, R
      WRITE(*, 10)
  10  FORMAT("Entre o valor da tabuada.")
      READ(*, 20) N
  20  FORMAT(I2, "\n")
      I = 1
 100  CONTINUE
        R = N * I
        WRITE(*, 30) N, I, R
  30    FORMAT(I2, " X ", I2, " = ", I3)
        I = I + 1
      IF (.NOT. I .GT. 10) THEN
        GOTO 100
      ENDIF
      END

