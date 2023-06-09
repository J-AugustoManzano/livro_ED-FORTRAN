      PROGRAM C06EX02
      INTEGER N

* Programa principal (N = parametro real)

      WRITE(*, 10)
  10  FORMAT("Entre um valor inteiro.")
      READ(*, 20) N
  20  FORMAT(I3)
      CALL FATORIAL(N)
      END

* Subprograma (X = parametro formal)

      SUBROUTINE FATORIAL(X)
        INTEGER FAT, I, X
        FAT = 1
        DO 100, I = 1, X, 1
          FAT = FAT * I
 100    CONTINUE
        WRITE(*, 110) X, FAT
 110    FORMAT("Fatorial de ", I3, " = ", I4)
        RETURN
      END

