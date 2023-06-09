      PROGRAM C06EX06
      INTEGER A, B
      LOGICAL COMPARA

      WRITE(*, 10)
  10  FORMAT("Entre dois valores inteiros.")
      READ(*, 20) A
      READ(*, 20) B
  20  FORMAT(I3)
      IF (COMPARA(A, B)) THEN
        WRITE(*, 30)
  30    FORMAT("Os valores sao iguais")
      ELSE
        WRITE(*, 40)
  40    FORMAT("Os valores s∆o diferentes")
      ENDIF
      END

      LOGICAL FUNCTION COMPARA(N1, N2)
        INTEGER N1, N2
        IF (N1 .EQ. N2) THEN
          COMPARA = .TRUE.
        ELSE
          COMPARA = .FALSE.
        ENDIF
        RETURN
      END

