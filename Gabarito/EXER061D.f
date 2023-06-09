      PROGRAM EXER061D
      REAL F, C

      WRITE(*, 10)
  10  FORMAT("Informe a temperatura em graus Fahrenheit.")
      READ(*, 20) F
  20  FORMAT(F8.2)
      CALL FTOC(F, C)
      WRITE(*, 30) C
  30  FORMAT("Celcius = ", F8.2)
      END

      SUBROUTINE FTOC(FX, CX)
        REAL FX, CX
        CX = (FX - 32) * 5 / 9
        RETURN
      END

