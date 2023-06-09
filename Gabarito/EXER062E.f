      PROGRAM EXER062E
      REAL AREA, C, L, A

      WRITE(*, 10)
  10  FORMAT("Informe os valores:COMPRIMENTO, LARGURA e ALTURA")
      READ(*, 20) C
      READ(*, 20) L
      READ(*, 20) A
  20  FORMAT(F8.2)
      WRITE(*, 30) AREA(C, L, A)
  30  FORMAT("Volume = ", F8.2)
      END

      REAL FUNCTION AREA(CX, LX, AX)
        REAL CX, LX, AX
        AREA = CX * LX * AX
        RETURN
      END

