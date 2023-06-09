      PROGRAM C06EX05
      INTEGER N, FATORIAL

      WRITE(*, 10)
  10  FORMAT("Entre um valor inteiro.")
      READ(*, 20) N
  20  FORMAT(I3)
      WRITE(*, 30) N, FATORIAL(N)
  30  FORMAT("Fatorial de ", I3, " = ", I4)
      END

      INTEGER FUNCTION FATORIAL(X)
        INTEGER FAT, I, X
        FAT = 1
        DO 100, I = 1, X, 1
          FAT = FAT * I
 100    CONTINUE
        FATORIAL = FAT
        RETURN
      END

