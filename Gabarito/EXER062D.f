      PROGRAM EXER062D
      REAL F, FTOC

      WRITE(*, 10)
  10  FORMAT("Informe a temperatura em graus Fahrenheit.")
      READ(*, 20) F
  20  FORMAT(F8.2)
      WRITE(*, 30) FTOC(F)
  30  FORMAT("Celcius = ", F8.2)
      END

      REAL FUNCTION FTOC(FX)
        REAL FX
        FTOC = (FX - 32) * 5 / 9
        RETURN
      END

