      PROGRAM EXERC02C
      REAL C, F
      WRITE(*, 10)
  10  FORMAT("Entre a temperatura em graus Fahrenheit.")
      READ (*, 20) F
  20  FORMAT(F8.2)
      C = (F - 32) * 5 / 9
      WRITE(*, 30) C
  30  FORMAT("Celsius = ", F8.2)
      END

