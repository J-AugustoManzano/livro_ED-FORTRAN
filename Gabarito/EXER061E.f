      PROGRAM EXER061E
      REAL V, C, L, A

      WRITE(*, 10)
  10  FORMAT("Informe os valores:COMPRIMENTO, LARGURA e ALTURA")
      READ(*, 20) C
      READ(*, 20) L
      READ(*, 20) A
  20  FORMAT(F8.2)
      CALL AREA(C, L, A, V)
      WRITE(*, 30) V
  30  FORMAT("Volume = ", F8.2)
      END

      SUBROUTINE AREA(CX, LX, AX, VX)
        REAL CX, LX, AX, VX
        VX = CX * LX * AX
        RETURN
      END

