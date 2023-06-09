      PROGRAM C04EX02
      INTEGER N, I, R
      CHARACTER RESP*1
      RESP = "S"
 200  IF (RESP .EQ. "s" .OR. RESP .EQ. "S") THEN
      WRITE(*, 10)
  10  FORMAT("Entre o valor da tabuada.")
      READ(*, 20) N
  20  FORMAT(I2)
        I = 1
 100    IF (I .LE. 10) THEN
          R = N * I
          WRITE(*, 30) N, I, R
  30      FORMAT(I2, " X ", I2, " = ", I3)
          I = I + 1
          GOTO 100
        ENDIF
        WRITE(*, 40)
  40    FORMAT("Deseja continuar?")
        READ(*, 50) RESP
  50    FORMAT(A1)
        GOTO 200
      ENDIF
      END

