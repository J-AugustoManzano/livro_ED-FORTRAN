      PROGRAM C09EX08D
      OPEN(1, FILE="PRN")
      WRITE(*, "('Programa para teste de impressao\n\n')")
      WRITE(1, "('\033\105Negrito\033\106')")
      WRITE(1, "('\033\64Italico\033\65')")
      WRITE(1, "('\014')")
      CLOSE(1)
      END

