      PROGRAM C03EX04
      INTEGER NUMERO
      WRITE(*, 10)
  10  FORMAT("Entre um valor:")
      READ(*, 20) NUMERO
  20  FORMAT(2I6)
      IF (NUMERO .GE. 20 .AND. NUMERO .LE. 90) THEN
        WRITE(*, 30)
  30    FORMAT("O valor esta entre 20 e 90")
      ELSE
        WRITE(*, 40)
  40    FORMAT("O valor nao esta entre 20 e 90")
      ENDIF
      END

