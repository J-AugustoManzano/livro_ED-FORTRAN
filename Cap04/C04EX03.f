      PROGRAM C04EX03
      INTEGER FAT, I, N
      WRITE(*, 10)
  10  FORMAT("Fatorial de qual valor?")
      READ(*, 20) N
  20  FORMAT(I3)
      FAT = 1
      I = 1
 100  IF (I .LE. N) THEN
        FAT = FAT * I
        I = I + 1
        GOTO 100
      ENDIF
      WRITE(*, 30) N, FAT
  30  FORMAT("Fatorial de ", I3, " = ", I4)
      END

