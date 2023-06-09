      PROGRAM C03EX09
      INTEGER*2 A, B, C, X
      WRITE(*, 10)
  10  FORMAT("Entre respectivamente valores para <A>, <B> e <X>.")
      READ(*, 20) A
      READ(*, 20) B
      READ(*, 20) X
  20  FORMAT(I6)
      IF (.NOT. X .GT. 5) THEN
        C = (A + B) * X
      ELSE
        C = (A - B) * X
      ENDIF
      WRITE(*, 30) C
  30  FORMAT("Resultado = ", I6)
      END

