      PROGRAM EXER061B
      REAL VLR, TAX, TMP, PMT

      WRITE(*, 10)
  10  FORMAT("Informe respectivamente: VALOR, TAXA e TEMPO.")
      READ(*, 20) VLR
      READ(*, 20) TAX
      READ(*, 20) TMP
  20  FORMAT(F8.2)
      CALL PRESTACAO(VLR, TAX, TMP, PMT)
      WRITE(*, 30) PMT
  30  FORMAT("Prestacao = ", F8.2)
      END

      SUBROUTINE PRESTACAO(VALOR, TAXA, TEMPO, PREST)
        REAL VALOR, TAXA, TEMPO, PREST
        PREST = VALOR + (VALOR * (TAXA/100) * TEMPO)
        RETURN
      END

