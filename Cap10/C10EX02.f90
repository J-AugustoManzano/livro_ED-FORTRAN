! Versao FORTRAN 90
      
PROGRAM C10EX02
  REAL(4) A, B, C
  WRITE(*, *) "Entre os lados <A>, <B> e <C> de um triangulo."
  READ(*, *) A
  READ(*, *) B
  READ(*, *) C
  IF (A < B + C .AND. B < A + C .AND. C < A + B) THEN
    IF (A == B .AND. B == C) THEN
      WRITE(*, *) "Trinagulo equilatero"
    ELSE
      IF (A == B .OR. A == C .OR. C == B) THEN
        WRITE(*,*) "Triangulo isosceles"
      ELSE
        WRITE(*, *) "Triangulo escaleno"
      ENDIF
    ENDIF
  ELSE
    WRITE(*, *) "Os valores fornecidos nao formam um triangulo"
  ENDIF
END PROGRAM C10EX02
