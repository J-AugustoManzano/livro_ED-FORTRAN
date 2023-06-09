      PROGRAM C04EX05
      INTEGER N, I, R
      CHARACTER RESP*1
      RESP = "S"
 200  CONTINUE
      WRITE(*, 10)
  10  FORMAT("Entre o valor da tabuada.")
      READ(*, 20) N
  20  FORMAT(I2)
        I = 1
 100    CONTINUE
          R = N * I
          WRITE(*, 30) N, I, R
  30      FORMAT(I2, " X ", I2, " = ", I3)
          I = I + 1
        IF (.NOT. I .GT. 10) THEN
          GOTO 100
        ENDIF
        WRITE(*, 40)
  40    FORMAT("Deseja continuar?")
        READ(*, 50) RESP
  50    FORMAT(A1)
      IF (.NOT. RESP .NE. "s" .OR. .NOT. RESP .NE. "S") THEN
        GOTO 200
      ENDIF
      END

