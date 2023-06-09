      PROGRAM C03EX07
      INTEGER VALOR1, VALOR2
      WRITE(*, 10)
  10  FORMAT("Entre valores pares ou impares")
      READ(*, 20) VALOR1
      READ(*, 20) VALOR2
  20  FORMAT(I6)
      IF (MOD(VALOR1, 2) .EQ. 0 .EQV. MOD(VALOR2, 2) .EQ. 0) THEN
        WRITE(*, 30)
  30    FORMAT("Os valores sao equivalentes")
      ELSE
        WRITE(*, 40)
  40    FORMAT("Entrada invalida")
      ENDIF
      END

