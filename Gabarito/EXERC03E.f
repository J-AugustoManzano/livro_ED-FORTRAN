      PROGRAM EXERC03E
      INTEGER A, B, C, D
      WRITE(*, 10)
  10  FORMAT("Entre quatro valores.")
      READ (*, 20) A
      READ (*, 20) B
      READ (*, 20) C
      READ (*, 20) D
  20  FORMAT(I3)
      IF (MOD(A, 2) .EQ. 0 .AND. MOD(A, 3) .EQ. 0) THEN
        WRITE(*, 30) A
      ENDIF
      IF (MOD(B, 2) .EQ. 0 .AND. MOD(B, 3) .EQ. 0) THEN
        WRITE(*, 30) B
      ENDIF
      IF (MOD(C, 2) .EQ. 0 .AND. MOD(C, 3) .EQ. 0) THEN
        WRITE(*, 30) C
      ENDIF
      IF (MOD(D, 2) .EQ. 0 .AND. MOD(D, 3) .EQ. 0) THEN
        WRITE(*, 30) D
      ENDIF
  30  FORMAT(I3, " e divisivel por 2 e 3")
      END

