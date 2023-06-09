      PROGRAM C02EX05
      REAL HT, VH, PD, TD, SB, SL
      WRITE(*, 10)
  10  FORMAT("Entre respectivamente a seguir os valores de:\n")
      WRITE(*, 11)
  11  FORMAT("Horas Trabalhadas")
      WRITE(*, 12)
  12  FORMAT("Valor da Hora")
      WRITE(*, 31)
  31  FORMAT("Percentual de Desconto\n")
      READ(*, 20) HT
      READ(*, 20) VH
      READ(*, 20) PD
  20  FORMAT(F8.2)
      SB = HT * VH
      TD = (PD / 100) * SB
      SL = SB - TD
      WRITE(*, 30) SB
  30  FORMAT("\nSalario Bruto .....: ", F8.2)
      WRITE(*, 25) TD
  25  FORMAT("Desconto ..........: ", F8.2)
      WRITE(*, 35) SL
  35  FORMAT("Salario Liquido ...: ", F8.2)
      END

