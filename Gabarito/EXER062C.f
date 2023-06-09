      PROGRAM EXER062C
      REAL C, CTOF

      WRITE(*, 10)
  10  FORMAT("Informe a temperatura em graus Celcius.")
      READ(*, 20) C
  20  FORMAT(F8.2)
      WRITE(*, 30) CTOF(C)
  30  FORMAT("Fahrenheit = ", F8.2)
      END

      REAL FUNCTION CTOF(CX)
        REAL CX
        CTOF = (9 * CX + 160) / 5
        RETURN
      END

