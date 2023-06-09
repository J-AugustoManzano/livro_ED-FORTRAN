      PROGRAM C03EX10
      REAL A, B, C
      WRITE(*, 10)
  10  FORMAT("Entre os lados <A>, <B> e <C> de um triangulo.")
      READ(*, 20) A
      READ(*, 20) B
      READ(*, 20) C
  20  FORMAT(F8.2)
      IF (A .LT. B + C .AND. B .LT. A + C .AND. C .LT. A + B) THEN
        IF (A .EQ. B .AND. B .EQ. C) THEN
          WRITE(*, 30)
  30      FORMAT("Trinagulo equilatero")
        ELSE
          IF (A .EQ. B .OR. A .EQ. C .OR. C .EQ. B) THEN
            WRITE(*, 40)
  40        FORMAT("Triangulo isosceles")
          ELSE
            WRITE(*, 50)
  50        FORMAT("Triangulo escaleno")
          ENDIF
        ENDIF
      ELSE
        WRITE(*, 60)
  60    FORMAT("Os valores fornecidos nao formam um triangulo")
      ENDIF
      END

