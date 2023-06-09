      PROGRAM EXERC03H
      INTEGER VLR
      WRITE(*, 10)
  10  FORMAT("Entre um valor.")
      READ (*, 20) VLR
  20  FORMAT(I3)
      IF (MOD(VLR, 2) .EQ. 0) THEN
        WRITE(*, 30)
  30    FORMAT("O valor e par.")
      ELSE
        WRITE(*, 40)
  40    FORMAT("O valor e impar.")
      ENDIF
      END

