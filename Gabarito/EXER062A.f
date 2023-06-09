      PROGRAM EXER062A
      INTEGER N, SOMATORIO

      WRITE(*, 10)
  10  FORMAT("Entre um valor inteiro.")
      READ(*, 20) N
  20  FORMAT(I3)
      WRITE(*, 30) N, SOMATORIO(N)
  30  FORMAT("Somatorio de ", I3, " = ", I4)
      END

      INTEGER FUNCTION SOMATORIO(X)
        INTEGER Y, I, X
        Y = 0
        DO 100, I = 1, X
          Y = Y + I
 100    CONTINUE
        SOMATORIO = Y
        RETURN
      END

