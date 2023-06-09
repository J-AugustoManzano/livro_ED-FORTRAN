      PROGRAM EXERC02F
      REAL F, K
      WRITE(*, 10)
  10  FORMAT("Entre a temperatura em graus Fahrenheit.")
      READ (*, 20) F
  20  FORMAT(F8.2)
      K = (F - 32) * 5 / 9 + 273.15
      WRITE(*, 30) K
  30  FORMAT("Kelvin = ", F8.2)
      END

