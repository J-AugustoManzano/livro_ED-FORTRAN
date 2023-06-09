      PROGRAM C09EX02
      OPEN(1, FILE="ARQTXT.XXX", STATUS="NEW", ERR=10)
      ENDFILE 1
      CLOSE(1)
      GOTO 20
  10  WRITE(*, "('Erro de criacao, o arquivo ja existe')")
  20  END
