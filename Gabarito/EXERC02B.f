      PROGRAM EXERC02B
      REAL F, C
      WRITE(*, 10)
  10  FORMAT("Entre a temperatura em graus Celsius.")
      READ (*, 20) C
  20  FORMAT(F8.2)
      F = (9 * C + 160) / 5
      WRITE(*, 30) F
  30  FORMAT("Fahrenheit = ", F8.2)
      END

