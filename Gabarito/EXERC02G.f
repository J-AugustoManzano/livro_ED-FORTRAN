      PROGRAM EXERC02G
      REAL K, F
      WRITE(*, 10)
  10  FORMAT("Entre a temperatura em graus Kelvin.")
      READ (*, 20) K
  20  FORMAT(F8.2)
      F = (9 * (K - 273.15) + 160) / 5
      WRITE(*, 30) F
  30  FORMAT("Fahrenheit = ", F8.2)
      END

