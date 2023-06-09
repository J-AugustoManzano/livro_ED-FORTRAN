      PROGRAM EXER061A
      INTEGER N, S

      WRITE(*, 10)
  10  FORMAT("Entre um valor inteiro.")
      READ(*, 20) N
  20  FORMAT(I3)
      CALL SOMATORIO(N, S)
      WRITE(*, 30) N, S
  30  FORMAT("Somatorio de ", I3, " = ", I4)
      END

      SUBROUTINE SOMATORIO(X, Y)
        INTEGER Y, I, X
        Y = 0
        DO 100, I = 1, X
          Y = Y + I
 100    CONTINUE
        RETURN
      END

