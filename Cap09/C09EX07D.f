      PROGRAM C09EX07D
      CHARACTER NOME*40
      OPEN(1, FILE="PRN")
      WRITE(*, "('Programa para teste de impressao\n\n')")
      WRITE(*, "('Informe seu nome a seguir\n')")
      READ(*, "(A40)") NOME
      WRITE(1, "(A40, '\014')") NOME
      CLOSE(1)
      END

