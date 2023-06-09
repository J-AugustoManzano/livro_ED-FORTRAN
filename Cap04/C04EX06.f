      PROGRAM C04EX06
      INTEGER FAT, I, N
      WRITE(*, 10)
  10  FORMAT("Fatorial de qual valor?")
      READ(*, 20) N
  20  FORMAT(I3)
      FAT = 1
      I = 1
 100  CONTINUE
        FAT = FAT * I
        I = I + 1
        IF (.NOT. I .GT. N) THEN
          GOTO 100
        ENDIF
      WRITE(*, 30) N, FAT
  30  FORMAT("Fatorial de ", I3, " = ", I4)
      END

