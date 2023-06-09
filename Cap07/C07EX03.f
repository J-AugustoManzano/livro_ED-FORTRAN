      PROGRAM C07EX03
      INTEGER I, A, SOMA
      DIMENSION A(5)

      WRITE(*, "('Somatorio de elementos impares')")
      
* // Entrada de dados

      WRITE(*, "('Entre 5 valores para a matriz <A>')")
      DO 100, I = 1, 5, 1
        READ(*, "(I2)") A(I)
 100  CONTINUE

* // Processa impar

      SOMA = 0
      DO 200, I = 1, 5, 1
        IF (MOD(A(I),2) .NE. 0) THEN
          SOMA = SOMA + A(I)
        ENDIF
 200  CONTINUE

* // Apresentacao das matrizes

      WRITE(*, "('A soma dos elementos equivale a: ', I4)") SOMA
      END
