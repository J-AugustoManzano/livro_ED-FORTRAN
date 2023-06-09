      PROGRAM C04EX08
      INTEGER FAT, I, N
      WRITE(*, 10)
  10  FORMAT("Fatorial de qual valor?")
      READ(*, 20) N
  20  FORMAT(I3)
      FAT = 1
      DO 100,  I = 1, N, 1
        FAT = FAT * I
 100  CONTINUE
      WRITE(*, 30) N, FAT
  30  FORMAT("Fatorial de ", I3, " = ", I4)
      END

