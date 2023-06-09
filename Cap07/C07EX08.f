      PROGRAM C07EX08
      INTEGER PESQ, I, A(10), ACHA
      CHARACTER RESP*1

      WRITE(*, "('Pesquisa de valores\n')")

* // Entrada de dados

      WRITE(*, "('Entre 10 valores.\n')")
      DO 100, I = 1, 10, 1
        READ(*, "(I2)") A(I)
 100  CONTINUE

* // Psquisa e apresentacao

      RESP = "S"
 200  IF (RESP .EQ. "S" .OR. RESP .EQ. "s") THEN
        WRITE(*, "('Entre um valor a ser pesquisado:')")
        READ(*, "(I2)") PESQ
        I = 1
        ACHA = 0
 300    IF (I .LE. 10 .AND. ACHA .EQ. 0) THEN
          IF (PESQ .EQ. A(I)) THEN
            ACHA = 1
          ELSE
            I = I + 1
          ENDIF
          GOTO 300
        ENDIF
        IF (ACHA .EQ. 1) THEN
          WRITE(*, "(I2, ' foi localizado na posicao ', I2)") PESQ, I
        ELSE
          WRITE(*, "(I2, ' nao foi localizado')") PESQ
        ENDIF
        WRITE(*,"('\n\nContinua? [S]im / [N]ao + <Enter>:')")
        READ(*, "(A1)") RESP
        GOTO 200
      ENDIF

      END

