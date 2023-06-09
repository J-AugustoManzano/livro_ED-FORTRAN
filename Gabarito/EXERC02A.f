      PROGRAM EXERC02A
      REAL DT, TP, VL, LU
      WRITE(*, 10)
      READ (*, 30) TP
      WRITE(*, 20)
      READ (*, 30) VL
  10  FORMAT("Entre o tempo gasto na viagem.")
  20  FORMAT("Entre a velocidade media.")
  30  FORMAT(F8.2)
      DT = TP * VL
      LU = DT / 12
      WRITE(*, 40) VL
      WRITE(*, 50) TP
      WRITE(*, 60) DT
      WRITE(*, 70) LU
  40  FORMAT("Velocidade ........:", F8.2)
  50  FORMAT("Tempo de viagem ...:", F8.2)
  60  FORMAT("Distancia .........:", F8.2)
  70  FORMAT("Litros usados .....:", F8.2)
      END

