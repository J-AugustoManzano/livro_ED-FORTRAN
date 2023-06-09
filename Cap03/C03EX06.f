      PROGRAM C03EX06
      INTEGER CODIGO1, CODIGO2, R1, R2
      WRITE(*, 10)
  10  FORMAT("Entre os codigos de acesso")
      READ(*, 20) CODIGO1
      READ(*, 20) CODIGO2
  20  FORMAT(I6)
      R1 = MOD(CODIGO1, 2)
      R2 = MOD(CODIGO2, 2)
      IF (R1 .EQ. 0 .XOR. R2 .EQ. 0) THEN
        WRITE(*, 30)
  30    FORMAT("Codigo correto")
      ELSE
        WRITE(*, 40)
  40    FORMAT("Codigo invalido")
      ENDIF
      END

