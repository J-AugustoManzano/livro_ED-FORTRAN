      PROGRAM EXER062B
      REAL VLR, TAX, TMP, PRESTACAO

      WRITE(*, 10)
  10  FORMAT("Informe respectivamente: VALOR, TAXA e TEMPO.")
      READ(*, 20) VLR
      READ(*, 20) TAX
      READ(*, 20) TMP
  20  FORMAT(F8.2)
      WRITE(*, 30) PRESTACAO(VLR, TAX, TMP)
  30  FORMAT("Prestacao = ", F8.2)
      END

      REAL FUNCTION PRESTACAO(VALOR, TAXA, TEMPO)
        REAL VALOR, TAXA, TEMPO
        PRESTACAO = VALOR + (VALOR * (TAXA/100) * TEMPO)
        RETURN
      END

