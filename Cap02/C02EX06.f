      PROGRAM C02EX06
      INTEGER QUOCIE, DIVIDE, DIVISO, RESTO
      WRITE(*, 10)
  10  FORMAT("Entre respectivamente os valores de:\n")
      WRITE(*, 15)
  15  FORMAT("Dividendo")
      WRITE(*, 20)
  20  FORMAT("Divisor\n")
      READ(*, 30) DIVIDE
      READ(*, 30) DIVISO
  30  FORMAT(I8)
      QUOCIE = DIVIDE / DIVISO
      RESTO = MOD(DIVIDE, DIVISO)
      WRITE(*, 35) QUOCIE
  35  FORMAT("\nQuociente .....: ", I8)
      WRITE(*, 40) RESTO
  40  FORMAT("Resto .........: ", I8)
      END

