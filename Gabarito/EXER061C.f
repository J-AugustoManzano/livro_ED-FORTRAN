      PROGRAM EXER061C
      REAL C, F

      WRITE(*, 10)
  10  FORMAT("Informe a temperatura em graus Celcius.")
      READ(*, 20) C
  20  FORMAT(F8.2)
      CALL CTOF(C, F)
      WRITE(*, 30) F
  30  FORMAT("Fahrenheit = ", F8.2)
      END

      SUBROUTINE CTOF(CX, FX)
        REAL CX, FX
        FX = (9 * CX + 160) / 5
        RETURN
      END

