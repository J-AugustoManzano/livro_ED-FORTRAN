      PROGRAM C06EX03
      INTEGER N, F

      WRITE(*, 10)
  10  FORMAT("Entre um valor inteiro.")
      READ(*, 20) N
  20  FORMAT(I3)
      CALL FATORIAL(N, F)
      WRITE(*, 30) N, F
  30  FORMAT("Fatorial de ", I3, " = ", I4)
      END

      SUBROUTINE FATORIAL(X, FAT)
        INTEGER FAT, I, X
        FAT = 1
        DO 100, I = 1, X, 1
          FAT = FAT * I
 100    CONTINUE
        RETURN
      END

