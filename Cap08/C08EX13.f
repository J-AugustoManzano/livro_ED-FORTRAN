      PROGRAM C08EX13
      INTEGER I, J, MEIO, COMECO, FINAL, ACHA
      CHARACTER RESP, X*40, PESQ*40, NOME(10)*40

      WRITE(*, "('Pesquisa binaria de nomes\n')")

* // Entrada de dados

      WRITE(*, "('Entre 10 nomes.\n')")
      DO 100, I = 1, 10, 1
        READ(*, "(A40)") NOME(I)
 100  CONTINUE

* // Ordenacao

      DO 200, I = 1, 9, 1
        DO 300, J = I + 1, 10, 1
          IF (NOME(I) .GT. NOME(J)) THEN
            X = NOME(I)
            NOME(I) = NOME(J)
            NOME(J) = X
          ENDIF
 300    CONTINUE
 200  CONTINUE

* // Psquisa e apresentacao

      RESP = "S"
 400  IF (RESP .EQ. "S" .OR. RESP .EQ. "s") THEN
        WRITE(*, "('\nEntre um nome a ser pesquisado:')")
        READ(*, "(A40)") PESQ
        COMECO = 1
        FINAL = 10
        ACHA = 0
 500    IF (COMECO .LE. FINAL .AND. ACHA .EQ. 0) THEN
          MEIO = (COMECO + FINAL) / 2
          IF (PESQ .EQ. NOME(MEIO)) THEN
            ACHA = 1
          ELSE
            IF (PESQ .LT. NOME(MEIO)) THEN
              FINAL = MEIO - 1
            ELSE
              COMECO = MEIO + 1
            ENDIF
          ENDIF
          GOTO 500
        ENDIF
        IF (ACHA .EQ. 1) THEN
          WRITE(*, "('\n', A40)") PESQ
          WRITE(*, "('foi localizado na posicao ', I2)") MEIO
        ELSE
          WRITE(*, "('\n', A40)") PESQ
          WRITE(*, "('nao foi localizado')")
        ENDIF
        WRITE(*,"('\n\nContinua? [S]im / [N]ao + <Enter>:')")
        READ(*, "(A1)") RESP
        GOTO 400
      ENDIF

      END

