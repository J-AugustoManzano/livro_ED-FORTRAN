      PROGRAM EXERC02D
      REAL K, C
      WRITE(*, 10)
  10  FORMAT("Entre a temperatura em graus Celsius.")
      READ (*, 20) C
  20  FORMAT(F8.2)
      K = C + 273.15
      WRITE(*, 30) K
  30  FORMAT("Kelvin = ", F8.2)
      END

