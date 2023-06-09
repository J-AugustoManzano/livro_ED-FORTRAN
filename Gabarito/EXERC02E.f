      PROGRAM EXERC02E
      REAL C, K
      WRITE(*, 10)
  10  FORMAT("Entre a temperatura em graus Kelvin.")
      READ (*, 20) K
  20  FORMAT(F8.2)
      C = K - 273.15
      WRITE(*, 30) C
  30  FORMAT("Celsius = ", F8.2)
      END

