      PROGRAM C08EX11

C // Definicao das variaveis e constante do programa

      INTEGER NUMCON, NUMDIG, NUMPON, NUMVOG, I, J
      CHARACTER SEQ*(*), TEXTO*80
      PARAMETER (SEQ = " AEIOUBCDFGHJKLMNPQRSTVWXYZ0123456789")

C // Inicializacao das variaveis

      NUMCON = 0
      NUMDIG = 0
      NUMPON = 0
      NUMVOG = 0

C // Entrada dos dados e conversao do texto em maiusculo

      WRITE(*, "('Entre um texto com ate 80 caracteres\n\n')")
      READ(*, "(A80)") TEXTO
      DO 100, I = 1, LEN(TEXTO)
        DO 200, J = 97, 122
          IF (TEXTO(I:I) .EQ. CHAR(J)) THEN
            TEXTO(I:I) = CHAR(ICHAR(CHAR(J)) - 32)
          ENDIF
 200    CONTINUE
 100  CONTINUE
      WRITE(*, "(A80)") TEXTO

C // Identificacao e contagem dos tipos de caractere

      DO 300, I = 1, LEN(TEXTO)
        J = 1
  10    IF (J .LE. LEN(SEQ) .AND. TEXTO(I:I) .NE. SEQ(J:J)) THEN
           J = J + 1
           GOTO 10
        ENDIF
          IF (J .NE. 1) THEN
            IF (J .LE. 6) THEN
              NUMVOG = NUMVOG + 1
            ELSE
              IF (J .LE. 27) THEN
                NUMCON = NUMCON + 1
              ELSE
                IF (J .LE. LEN(SEQ)) THEN
                  NUMDIG = NUMDIG + 1
                ELSE
                  NUMPON = NUMPON + 1
              ENDIF
            ENDIF
          ENDIF
        ENDIF
 300  CONTINUE

C // Apresentacao do relatorio

      IF (NUMVOG .LE. 1) THEN
        WRITE(*, "(2X, I2, 1X, 'Vogal')") NUMVOG
      ELSE
        WRITE(*, "(2X, I2, 1X, 'Vogais')") NUMVOG
      ENDIF

      IF (NUMCON .LE. 1) THEN
        WRITE(*, "(2X, I2, 1X, 'Consoante')") NUMCON
      ELSE
        WRITE(*, "(2X, I2, 1X, 'Consoantes')") NUMCON
      ENDIF

      IF (NUMDIG .LE. 1) THEN
        WRITE(*, "(2X, I2, 1X, 'Digito')") NUMDIG
      ELSE
        WRITE(*, "(2X, I2, 1X, 'Digitos')") NUMDIG
      ENDIF

      IF (NUMPON .LE. 1) THEN
        WRITE(*, "(2X, I2, 1X, 'Sinal de pontuacao')") NUMPON
      ELSE
        WRITE(*, "(2X, I2, 1X, 'Sinais de pontuacao')") NUMPON
      ENDIF

      END

